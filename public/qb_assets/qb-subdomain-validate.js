$(document).ready(function () {
    let timer;
    const debounceDuration = 300; // milliseconds

    function isValidSubdomain(subdomain) {
        const regex = /^[a-zA-Z0-9][a-zA-Z0-9-]{1,61}[a-zA-Z0-9]$/;
        return regex.test(subdomain);
    }

    function checkSubdomain(subdomain) {
        if (!isValidSubdomain(subdomain)) {
            showFeedback("El subdominio no es válido", "invalid");
            return;
        }

        showStatus("checking");

        $.get(`/qb/register/verify-subdomain/${subdomain}`, function (data) {
            if (data.available) {
                showFeedback("Subdominio disponible", "valid");
            } else {
                showFeedback("Subdominio no disponible", "invalid");
                showSuggestions(data.suggestions);
            }
        }).fail(function () {
            showFeedback("Error al comprobar el subdominio", "invalid");
        });
    }

    function showStatus(status) {
        const $status = $("#subdomain-status");
        $status.removeClass("text-success text-danger text-warning");

        switch (status) {
            case "checking":
                $status.addClass("text-warning");
                break;
            case "valid":
                $status.addClass("text-success");
                break;
            case "invalid":
                $status.addClass("text-danger");
                break;
        }
    }

    function showFeedback(message, type) {
        const $feedback = $("#subdomain-feedback");
        $feedback.removeClass("text-success text-danger");
        if (type === "valid") {
            $feedback.addClass("text-success");
        } else {
            $feedback.addClass("text-danger");
        }
        $feedback.text(message);
        $("#subdomain").removeClass("is-invalid is-valid").addClass(`is-${type}`);
        $feedback.show();
        showStatus(type);
    }

    function showSuggestions(suggestions) {
        const $suggestions = $("#subdomain-suggestions");
        if (suggestions && suggestions.length) {
            let html = '<p>Sugerencias:</p><ul class="list-group">';
            suggestions.forEach(suggestion => {
                html += `<li class="list-group-item list-group-item-action suggestion-item">${suggestion}</li>`;
            });
            html += '</ul>';
            $suggestions.html(html);
        } else {
            $suggestions.empty();
        }
    }

    $("#subdomain").on("input", function () {
        const subdomain = $(this).val();

        clearTimeout(timer);

        if (subdomain.length > 2) {
            timer = setTimeout(function () {
                checkSubdomain(subdomain);
            }, debounceDuration);
        } else {
            $("#subdomain-status").empty();
            $("#subdomain-feedback").empty().hide();
            $("#subdomain-suggestions").empty();
            $(this).removeClass("is-invalid is-valid");
        }
    });

    // Manejar clic en sugerencias
    $(document).on("click", ".suggestion-item", function () {
        $("#subdomain").val($(this).text()).trigger("input");
    });
});