<?php $__env->startSection('page-title'); ?>
    <?php echo e(__('Manage Payroll')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('breadcrumb'); ?>
    <li class="breadcrumb-item"><a href="<?php echo e(route('dashboard')); ?>"><?php echo e(__('Dashboard')); ?></a></li>
    <li class="breadcrumb-item"><?php echo e(__('Payroll Report')); ?></li>
<?php $__env->stopSection(); ?>
<?php $__env->startPush('script-page'); ?>
    <script type="text/javascript" src="<?php echo e(asset('js/jszip.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(asset('js/pdfmake.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(asset('js/vfs_fonts.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(asset('js/dataTables.buttons.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(asset('js/buttons.html5.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(asset('js/html2pdf.bundle.min.js')); ?>"></script>

    <script>
        $('input[name="type"]:radio').on('change', function (e) {
            var type = $(this).val();
            if (type == 'monthly') {
                $('.month').addClass('d-block');
                $('.month').removeClass('d-none');
                $('.year').addClass('d-none');
                $('.year').removeClass('d-block');
            } else {
                $('.year').addClass('d-block');
                $('.year').removeClass('d-none');
                $('.month').addClass('d-none');
                $('.month').removeClass('d-block');
            }
        });

        $('input[name="type"]:radio:checked').trigger('change');

    </script>

    <script type="text/javascript" src="<?php echo e(asset('js/html2pdf.bundle.min.js')); ?>"></script>
    <script>
        var filename = $('#filename').val();

        function saveAsPDF() {
            var element = document.getElementById('printableArea');
            var opt = {
                margin: 0.3,
                filename: filename,
                image: {type: 'jpeg', quality: 1},
                html2canvas: {scale: 4, dpi: 72, letterRendering: true},
                jsPDF: {unit: 'in', format: 'A4'}
            };
            html2pdf().set(opt).from(element).save();
        }

        $(document).ready(function () {
            var filename = $('#filename').val();
            $('#report-dataTable').DataTable({
                dom: 'lBfrtip',
                buttons: [
                    {
                        extend: 'pdf',
                        title: filename
                    },
                    {
                        extend: 'excel',
                        title: filename
                    }, {
                        extend: 'csv',
                        title: filename
                    }
                ]
            });
        });
    </script>

    <script>

        $(document).ready(function () {
            var b_id = $('#branch_id').val();
        });
        $(document).on('change', 'select[name=branch_id]', function () {

            var branch_id = $(this).val();
            getDepartment(branch_id);
        });

        function getDepartment(bid) {

            $.ajax({
                url: '<?php echo e(route('report.payroll.getdepartment')); ?>',
                type: 'POST',
                data: {
                    "branch_id": bid,
                    "_token": "<?php echo e(csrf_token()); ?>",
                },

                success: function (data) {
                    $('#department_id').empty();
                    $("#department_div").html('');
                    $('#department_div').append('<label for="department" class="form-label"><?php echo e(__('Department')); ?></label><select class="form-control" id="department_id" name="department_id"  ></select>');
                    $('#department_id').append('<option value=""><?php echo e(__('Select Department')); ?></option>');
                    $.each(data, function (key, value) {
                        $('#department_id').append('<option value="' + key + '">' + value + '</option>');
                    });

                }

            });
        }

        $(document).on('change', '#department_id', function () {
            var department_id = $(this).val();
            getEmployee(department_id);
        });

        function getEmployee(did) {
            $.ajax({
                url: '<?php echo e(route('report.payroll.getemployee')); ?>',
                type: 'POST',
                data: {
                    "department_id": did,
                    "_token": "<?php echo e(csrf_token()); ?>",
                },
                success: function (data) {
                    $('#employee_id').empty();
                    $("#employee_div").html('');
                    $('#employee_div').append('<label for="employee" class="form-label"><?php echo e(__('Employee')); ?></label><select class="form-control" id="employee_id" name="employee_id"></select>');
                    $('#employee_id').append('<option value=""><?php echo e(__('Select Employee')); ?></option>');

                    $.each(data, function (key, value) {
                        $('#employee_id').append('<option value="' + key + '">' + value + '</option>');
                    });

                }
            });
        }
    </script>
<?php $__env->stopPush(); ?>

<?php $__env->startSection('action-btn'); ?>
    <div class="float-end">
        <a href="<?php echo e(route('payroll.export')); ?>" data-bs-toggle="tooltip" title="<?php echo e(__('Export')); ?>"
           class="btn btn-sm btn-primary">
            <i class="ti ti-file-export"></i>
        </a>

        <a href="#" class="btn btn-sm btn-primary" onclick="saveAsPDF()"data-bs-toggle="tooltip" title="<?php echo e(__('Download')); ?>" data-original-title="<?php echo e(__('Download')); ?>">
            <span class="btn-inner--icon"><i class="ti ti-download"></i></span>
        </a>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="row">
        <div class="col-sm-12">
            <div class=" mt-2 " id="multiCollapseExample1">
                <div class="card">
                    <div class="card-body">
                        <?php echo e(Form::open(array('route' => array('report.payroll'),'method'=>'get','id'=>'report_payroll'))); ?>

                        <div class="row align-items-center justify-content-end">
                            <div class="col-md-2 mt-2">
                                <label class="form-label"><?php echo e(__('Type')); ?></label> <br>
                                <div class="form-check form-check-inline form-group">
                                    <input type="radio" id="monthly" value="monthly" name="type" class="form-check-input" <?php echo e(isset($_GET['type']) && $_GET['type']=='monthly' ?'checked':'checked'); ?>>
                                    <label class="form-check-label" for="monthly"><?php echo e(__('Monthly')); ?></label>
                                </div>
                                <div class="form-check form-check-inline form-group">
                                    <input type="radio" id="daily" value="daily" name="type" class="form-check-input" <?php echo e(isset($_GET['type']) && $_GET['type']=='daily' ?'checked':''); ?>>
                                    <label class="form-check-label" for="daily"><?php echo e(__('Daily')); ?></label>
                                </div>
                            </div>
                            <div class="col-md-2 month">
                                <div class="btn-box">
                                    <?php echo e(Form::label('month',__('Month'),['class'=>'form-label'])); ?>

                                    <?php echo e(Form::month('month',isset($_GET['month'])?$_GET['month']:date('Y-m'),array('class'=>'month-btn form-control'))); ?>

                                </div>
                            </div>
                            <div class="col-md-2 year d-none">
                                <div class="btn-box">
                                    <?php echo e(Form::label('year', __('Year'),['class'=>'form-label'])); ?>

                                    <select class="form-control select" id="year" name="year" tabindex="-1" aria-hidden="true">
                                        <?php for($filterYear['starting_year']; $filterYear['starting_year'] <= $filterYear['ending_year']; $filterYear['starting_year']++): ?>
                                            <option <?php echo e((isset($_GET['year']) && $_GET['year'] == $filterYear['starting_year'] ?'selected':'')); ?> <?php echo e((!isset($_GET['year']) && date('Y') == $filterYear['starting_year'] ?'selected':'')); ?> value="<?php echo e($filterYear['starting_year']); ?>"><?php echo e($filterYear['starting_year']); ?></option>
                                        <?php endfor; ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="btn-box">
                                    <?php echo e(Form::label('branch', __('Branch'),['class'=>'form-label'])); ?>

                                    <select class="form-control select" name="branch_id" id="branch_id"  placeholder="Select Branch" required>
                                        <option value=""><?php echo e(__('Select Branch')); ?></option>
                                        <?php $__currentLoopData = $branch; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $branch): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($branch->id); ?>"><?php echo e($branch->name); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="btn-box" id="department_div">
                                    <?php echo e(Form::label('department', __('Department'),['class'=>'form-label'])); ?>

                                    <select class="form-control select" name="department_id" id="department_id" required="required">
                                        <option value=""><?php echo e(__('Select Department')); ?></option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-3">
                                <div class="btn-box" id="employee_div">
                                    <?php echo e(Form::label('employee', __('Employee'),['class'=>'form-label'])); ?>

                                    <select class="form-control select" name="employee_id" id="employee_id">
                                        <option value=""><?php echo e(__('Select Employee')); ?></option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-auto mt-4">
                                <a href="#" class="btn btn-sm btn-primary" onclick="document.getElementById('report_payroll').submit(); return false;" data-bs-toggle="tooltip" title="<?php echo e(__('Apply')); ?>" data-original-title="<?php echo e(__('apply')); ?>">
                                    <span class="btn-inner--icon"><i class="ti ti-search"></i></span>
                                </a>
                                <a href="<?php echo e(route('report.payroll')); ?>" class="btn btn-sm btn-danger " data-bs-toggle="tooltip" title="<?php echo e(__('Reset')); ?>" data-original-title="<?php echo e(__('Reset')); ?>">
                                    <span class="btn-inner--icon"><i class="ti ti-trash-off text-white-off "></i></span>
                                </a>
                            </div>
                        </div>
                        <?php echo e(Form::close()); ?>

                    </div>
                </div>
            </div>
        </div>
    </div>


    <div id="printableArea" class="mt-2">
        <div class="row mt-3">
            <div class="col">
                <input type="hidden" value="<?php echo e($filterYear['branch'] .' '.__('Branch') .' '.$filterYear['dateYearRange'].' '.$filterYear['type'].' '.__('Payroll Report of').' '. $filterYear['department'].' '.'Department'); ?>" id="filename">
                <div class="card p-4 mb-4">
                    <h6 class="mb-0"><?php echo e(__('Report')); ?> :</h6>
                    <h7 class="text-sm mb-0"><?php echo e($filterYear['type'].' '.__('Payroll Summary')); ?></h7>
                </div>
            </div>
            <?php if($filterYear['branch']!='All'): ?>
                <div class="col">
                    <div class="card p-4 mb-4">
                        <h6 class="mb-0"><?php echo e(__('Branch')); ?> :</h6>
                        <h7 class="text-sm mb-0"><?php echo e($filterYear['branch']); ?></h7>
                    </div>
                </div>
            <?php endif; ?>
            <?php if($filterYear['department']!='All'): ?>
                <div class="col">
                    <div class="card p-4 mb-4">
                        <h6 class="mb-0"><?php echo e(__('Department')); ?> :</h6>
                        <h7 class="text-sm mb-0"><?php echo e($filterYear['department']); ?></h7>
                    </div>
                </div>
            <?php endif; ?>

            <div class="col">
                <div class="card p-4 mb-4">
                    <h6 class=" mb-0"><?php echo e(__('Duration')); ?> :</h6>
                    <h7 class="text-sm mb-0"><?php echo e($filterYear['dateYearRange']); ?></h7>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3 col-xl-3">
                <div class="card p-4 mb-4">
                    <h6 class=" mb-0"><?php echo e(__('Total Basic Salary')); ?> :</h6>
                    <h7 class="text-sm mb-0"><?php echo e(\Auth::user()->priceFormat($filterData['totalBasicSalary'])); ?></h7>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3 col-xl-3">
                <div class="card p-4 mb-4">
                    <h6 class=" mb-0"><?php echo e(__('Total Net Salary')); ?> :</h6>
                    <h7 class="text-sm mb-0"><?php echo e(\Auth::user()->priceFormat($filterData['totalNetSalary'])); ?></h7>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3 col-xl-3">
                <div class="card p-4 mb-4">
                    <h6 class=" mb-0"><?php echo e(__('Total Allowance')); ?> :</h6>
                    <h7 class="text-sm mb-0"><?php echo e(\Auth::user()->priceFormat($filterData['totalAllowance'])); ?></h7>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3 col-xl-3">
                <div class="card p-4 mb-4">
                    <h6 class=" mb-0"><?php echo e(__('Total Commission')); ?> :</h6>
                    <h7 class="text-sm mb-0"><?php echo e(\Auth::user()->priceFormat($filterData['totalCommision'])); ?></h7>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3 col-xl-3">
                <div class="card p-4 mb-4">
                    <h6 class=" mb-0"><?php echo e(__('Total Loan')); ?> :</h6>
                    <h7 class="text-sm mb-0"><?php echo e(\Auth::user()->priceFormat($filterData['totalLoan'])); ?></h7>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3 col-xl-3">
                <div class="card p-4 mb-4">
                    <h6 class=" mb-0"><?php echo e(__('Total Saturation Deduction')); ?> :</h6>
                    <h7 class="text-sm mb-0"><?php echo e(\Auth::user()->priceFormat($filterData['totalSaturationDeduction'])); ?></h7>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3 col-xl-3">
                <div class="card p-4 mb-4">
                    <h6 class=" mb-0"><?php echo e(__('Total Other Payment')); ?> :</h6>
                    <h7 class="text-sm mb-0"><?php echo e(\Auth::user()->priceFormat($filterData['totalOtherPayment'])); ?></h7>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3 col-xl-3">
                <div class="card p-4 mb-4">
                    <h6 class=" mb-0"><?php echo e(__('Total Overtime')); ?> :</h6>
                    <h7 class="text-sm mb-0"><?php echo e(\Auth::user()->priceFormat($filterData['totalOverTime'])); ?></h7>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-body table-border-style">
                    <div class="table-responsive py-4">
                        <table class="table datatable mb-0" id="report-dataTable">
                            <thead>
                            <tr>
                                <th><?php echo e(__('Employee ID')); ?></th>
                                <th><?php echo e(__('Employee')); ?></th>
                                <th><?php echo e(__('Salary')); ?></th>
                                <th><?php echo e(__('Net Salary')); ?></th>
                                <th><?php echo e(__('Month')); ?></th>
                                <th><?php echo e(__('Status')); ?></th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php $__currentLoopData = $payslips; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $payslip): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td><a href="<?php echo e(route('employee.show',\Illuminate\Support\Facades\Crypt::encrypt($payslip->employee_id))); ?>" class="btn btn-sm btn-outline-primary"><?php echo e(!empty($payslip->employees)?\Auth::user()->employeeIdFormat($payslip->employees->employee_id):''); ?></a></td>
                                    <td><?php echo e((!empty($payslip->employees)) ? $payslip->employees->name:''); ?></td>
                                    <td><?php echo e(\Auth::user()->priceFormat($payslip->basic_salary)); ?></td>
                                    <td><?php echo e(\Auth::user()->priceFormat($payslip->net_payble)); ?></td>
                                    <td><?php echo e($payslip->salary_month); ?></td>
                                    <td>
                                        <?php if($payslip->status==0): ?>
                                            <div class="badge bg-danger p-2 px-3 rounded"><a href="#" class="text-white"><?php echo e(__('UnPaid')); ?></a></div>
                                        <?php else: ?>
                                            <div class="badge bg-success p-2 px-3 rounded"><a href="#" class="text-white"><?php echo e(__('Paid')); ?></a></div>
                                        <?php endif; ?>
                                    </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\wwwLaragon\erpQuickBill\resources\views/report/payroll.blade.php ENDPATH**/ ?>