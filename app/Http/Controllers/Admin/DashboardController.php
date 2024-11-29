<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Repositories\Order\OrderInterface;
use App\Repositories\OrderDetail\OrderDetailInterface;
use App\Repositories\Product\ProductInterface;
use App\Repositories\User\UserInterface;
use App\Repositories\Contact\ContactInterface; // Thêm import cho ContactInterface
use Illuminate\Http\Request;
use Carbon\Carbon;

class DashboardController extends Controller
{
    protected $productRepository;
    protected $orderRepository;
    protected $userRepository;
    protected $orderDetailRepository;
    protected $contactRepository; // Thêm thuộc tính contactRepository

    public function __construct(
        ProductInterface $productRepos,
        OrderInterface $orderRepos,
        UserInterface $userRepos,
        OrderDetailInterface $orderDetailRepos,
        ContactInterface $contactRepos // Inject ContactInterface
    ) {
        $this->middleware('guest', ['except' => 'logout']);
        $this->productRepository = $productRepos;
        $this->orderRepository = $orderRepos;
        $this->userRepository = $userRepos;
        $this->orderDetailRepository = $orderDetailRepos;
        $this->contactRepository = $contactRepos; // Gán thuộc tính contactRepository
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $total_product = $this->productRepository->getTotalProduct();
        $total_customer = $this->userRepository->getTotalUser();
        $total_order = $this->orderRepository->getTotalOrder();
        $day_now  = Carbon::now();
        $revenueByDay = $this->orderDetailRepository->revenueByDay($day_now);
        $day = date('w');
        $week_start = date('yy-m-d', strtotime('-'.$day.' days'));
        $week_end = date('yy-m-d', strtotime('+'.(6-$day).' days'));
        $revenueByWeek = $this->orderDetailRepository->revenueByWeek($week_start, $week_end);
        $revenueByMonth = $this->orderDetailRepository->revenueByMonth(date('m'));

        // Lấy tổng số liên hệ (hoặc các thông tin khác tuỳ theo yêu cầu)
        $total_contact = $this->contactRepository->getTotalContacts();

        return view('admin.layouts.dashboards.index', compact(
            'total_product',
            'total_customer',
            'total_order',
            'revenueByDay',
            'revenueByWeek',
            'revenueByMonth',
            'total_contact' // Truyền dữ liệu này vào view
        ));
    }

    public function report(Request $request)
    {
        // Logic cho báo cáo nếu cần
    }
}

