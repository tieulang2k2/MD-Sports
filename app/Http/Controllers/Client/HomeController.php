<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Repositories\Brand\BrandInterface;
use App\Repositories\Category\CategoryInterface;
use App\Repositories\Product\ProductInterface;
use App\Repositories\Slide\SlideInterface;
use Illuminate\Http\Request;
use Mail;
use Session;
use Auth;
use App\Models\User;
use App\Models\Contact;
class HomeController extends Controller
{
    private $productRepository;
    private $brandRepository;
    private $slideRepository;
    private $categoryRepository;

    public function __construct(
        ProductInterface $productRepos,
        BrandInterface $brandRepos,
        SlideInterface $slideRepos,
        CategoryInterface $categoryRepos
    ) {
        $this->productRepository = $productRepos;
        $this->brandRepository = $brandRepos;
        $this->slideRepository = $slideRepos;
        $this->categoryRepository = $categoryRepos;
    }

    public function index()
    {
        $slides = $this->slideRepository->getTopSlide(3);
        $topHots = $this->productRepository->getTopHotProduct(4);
        $topNews = $this->productRepository->getTopNewProduct(4);
        $topSales = $this->productRepository->getTopSaleProduct(4);
        $brands = $this->brandRepository->getTopBrand(10);
        $categories = $this->categoryRepository->getCategory();
        return view('client.layouts.home', compact('slides', 'topHots', 'topNews', 'topSales', 'brands', 'categories'));
    }
    public function about()
    {
        return view('client.layouts.about_us');
    }
    public function size_guide()
    {
        return view('client.layouts.size_guide');
    }
    public function term()
    {
        return view('client.layouts.term');
    }
    public function policy()
    {
        return view('client.layouts.policy');
    }
    // send gmail
    public function contact()
    {
        return view('client.layouts.contact_us');
    }
    public function infor()
    {
        $user = Auth::user();
        return view('client.layouts.infor', compact('user'));
    }
    public function updateInfor(Request $request, $id)
    {
        // Kiểm tra tính hợp lệ của dữ liệu đầu vào
        $request->validate([
            'name' => 'required|max:255', // Tên bắt buộc
            'password' => 'required|min:6', // Mật khẩu bắt buộc, tối thiểu 6 ký tự
        ], [
            'name.required' => 'Tên người dùng không được để trống.',
            'password.required' => 'Mật khẩu không được để trống.', // Thông báo khi để trống mật khẩu
            'password.min' => 'Mật khẩu phải có ít nhất 6 ký tự.', // Thông báo khi mật khẩu quá ngắn
        ]);

        // Lấy dữ liệu người dùng
        $data = User::find($id);
        $data->name = $request->name;
        $data->password = bcrypt($request->password); // Mã hóa mật khẩu mới
        $data->update();

        // Trả về với thông báo thành công
        return back()->with('thanhcong', 'Cập nhật thành công');
    }


    public function sendContact(Request $request)
    {
        $input = $request->all();

        // Lưu thông tin vào cơ sở dữ liệu
        Contact::create([
            'name' => $input['name'],
            'email' => $input['email'],
            'subject' => $input['subject'],
            'mess' => $input['mess']
        ]);

        // Gửi email
        Mail::send('client.layouts.mail', [
            'name' => $input['name'],
            'email' => $input['email'],
            'subject' => $input['subject'],
            'mess' => $input['mess']
        ], function ($message) {
            $message->to('tieulang2k2@gmail.com')->subject('Phản hồi từ khách hàng!');
        });

        Session::flash('flash_message', 'Send message successfully!');
        return back();
    }

    // end
    public function login()
    {
        return view('client.layouts.login');
    }
    public function register()
    {
        return view('client.layouts.register');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
