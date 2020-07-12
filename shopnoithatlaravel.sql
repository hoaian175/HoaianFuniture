-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 12, 2020 lúc 07:11 AM
-- Phiên bản máy phục vụ: 10.3.15-MariaDB
-- Phiên bản PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopnoithatlaravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_03_09_021611_create_tbl_admin_table', 1),
(4, '2020_03_09_064506_create_tbl_category_product', 2),
(5, '2020_03_10_054239_create_tbl_brand_product', 3),
(6, '2020_03_10_064850_create_tbl_product_', 4),
(7, '2020_04_15_125527_tbl_customer', 5),
(8, '2020_04_17_124223_tbl_shipping', 6),
(9, '2020_04_19_131528_tbl_payment', 7),
(10, '2020_04_19_131628_tbl_order', 7),
(11, '2020_04_19_131808_tbl_order_details', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Hoài Ân', '0383367670', '2020-03-08 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(2, 'HoaiAn Funiture', 'Hoai An', 0, NULL, NULL),
(3, 'Việt nam', 'việt nam', 0, NULL, NULL),
(4, 'Châu âu', 'Châu âu', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Ghế thường', 'Ghế thường', 0, NULL, NULL),
(4, 'Đèn trang trí', 'Đèn trang trí', 0, NULL, NULL),
(5, 'Bàn làm việc', 'Bàn làm việc', 0, NULL, NULL),
(8, 'Ghế Sofa', 'Ghế sofa', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(8, 'nguyen hoai an', 'carloskingvn@gmail.com', '202cb962ac59075b964b07152d234b70', '0383367670', NULL, NULL),
(9, 'Trung kiên', 'trungkien@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0123123123', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(3, 8, 4, 5, '1,210,000.00', 'Đang chờ xử lý', NULL, NULL),
(5, 8, 5, 7, '363,000.00', 'Đang chờ xử lý', NULL, NULL),
(6, 8, 6, 8, '605,000.00', 'Đang chờ xử lý', NULL, NULL),
(7, 8, 7, 9, '847,000.00', 'Đang chờ xử lý', NULL, NULL),
(8, 8, 8, 10, '605,000.00', 'Đang chờ xử lý', NULL, NULL),
(9, 8, 9, 11, '1,936,000.00', 'Đang chờ xử lý', NULL, NULL),
(12, 8, 14, 14, '24,563,000.00', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(4, 3, 4, 'Đèn đẹp', '1000000', 1, NULL, NULL),
(5, 5, 17, 'Ghế 2', '100000', 3, NULL, NULL),
(6, 6, 6, 'Ghế xịn', '100000', 5, NULL, NULL),
(7, 7, 16, 'đèn 2', '500000', 1, NULL, NULL),
(8, 7, 9, 'bàn siêu đẹp 4', '100000', 2, NULL, NULL),
(9, 8, 16, 'đèn 2', '500000', 1, NULL, NULL),
(10, 9, 6, 'Ghế xịn', '100000', 1, NULL, NULL),
(11, 9, 16, 'đèn 2', '500000', 1, NULL, NULL),
(12, 9, 4, 'Đèn đẹp', '1000000', 1, NULL, NULL),
(16, 12, 20, 'SLOOPY- GHẾ SOFA', '9900000', 2, NULL, NULL),
(17, 12, 23, 'ĐÈN DÂY NGÔI SAO', '500000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Đang chờ xử lý', NULL, NULL),
(2, '1', 'Đang chờ xử lý', NULL, NULL),
(3, '1', 'Đang chờ xử lý', NULL, NULL),
(4, '1', 'Đang chờ xử lý', NULL, NULL),
(5, '2', 'Đang chờ xử lý', NULL, NULL),
(6, '2', 'Đang chờ xử lý', NULL, NULL),
(7, '2', 'Đang chờ xử lý', NULL, NULL),
(8, '2', 'Đang chờ xử lý', NULL, NULL),
(9, '2', 'Đang chờ xử lý', NULL, NULL),
(10, '2', 'Đang chờ xử lý', NULL, NULL),
(11, '2', 'Đang chờ xử lý', NULL, NULL),
(12, '2', 'Đang chờ xử lý', NULL, NULL),
(13, '2', 'Đang chờ xử lý', NULL, NULL),
(14, '2', 'Đang chờ xử lý', NULL, NULL),
(15, '2', 'Đang chờ xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `product_name`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(4, 4, 'ĐÈN LỒNG GT03', 2, 'Kích thước: L1200 x W600 x H750 mm Chất liệu: Chân sắt hộp 25x 50 sơn tĩnh điện, Mặt bàn gỗ MFC 18mm An Cường', 'Kích thước: L1200 x W600 x H750 mm Chất liệu: Chân sắt hộp 25x 50 sơn tĩnh điện, Mặt bàn gỗ MFC 18mm An Cường', '750000', 'den11.jpg', 0, NULL, NULL),
(5, 5, 'BÀN ĐEN KIỂU ÂU', 2, 'Kích thước: L1200 x W600 x H750 mm Chất liệu: Chân sắt hộp 25x 50 sơn tĩnh điện, Mặt bàn gỗ MFC 18mm An Cường', 'Kích thước: L1200 x W600 x H750 mm Chất liệu: Chân sắt hộp 25x 50 sơn tĩnh điện, Mặt bàn gỗ MFC 18mm An Cường', '800000', 'ban135.jpg', 0, NULL, NULL),
(6, 1, 'GHẾ TRẮNG GT09', 3, 'Kích thước: L1200 x W600 x H750 mm Chất liệu: Chân sắt hộp 25x 50 sơn tĩnh điện, Mặt bàn gỗ MFC 18mm An Cường', 'Kích thước: L1200 x W600 x H750 mm Chất liệu: Chân sắt hộp 25x 50 sơn tĩnh điện, Mặt bàn gỗ MFC 18mm An Cường', '180000', 'ghe126.jpg', 0, NULL, NULL),
(9, 5, 'BÀN CHÂN CAO SANG TRỌNG', 2, 'Kích thước: L1200 x W600 x H750 mm Chất liệu: Chân sắt hộp 25x 50 sơn tĩnh điện, Mặt bàn gỗ MFC 18mm An Cường', 'Kích thước: L1200 x W600 x H750 mm Chất liệu: Chân sắt hộp 25x 50 sơn tĩnh điện, Mặt bàn gỗ MFC 18mm An Cường', '550000', 'ban269.jpg', 0, NULL, NULL),
(16, 4, 'ĐÈN ĐEN TRANG TRÍ', 2, 'Kích thước: L1200 x W600 x H750 mm Chất liệu: Chân sắt hộp 25x 50 sơn tĩnh điện, Mặt bàn gỗ MFC 18mm An Cường', 'Kích thước: L1200 x W600 x H750 mm Chất liệu: Chân sắt hộp 25x 50 sơn tĩnh điện, Mặt bàn gỗ MFC 18mm An Cường', '380000', 'den248.jpg', 0, NULL, NULL),
(17, 1, 'GHẾ NHỰA GT08', 3, 'Kích thước: L1200 x W600 x H750 mm Chất liệu: Chân sắt hộp 25x 50 sơn tĩnh điện, Mặt bàn gỗ MFC 18mm An Cường', 'Kích thước: L1200 x W600 x H750 mm Chất liệu: Chân sắt hộp 25x 50 sơn tĩnh điện, Mặt bàn gỗ MFC 18mm An Cường', '80000', 'ghe264.jpg', 0, NULL, NULL),
(19, 1, 'GHẾ SẮT ĐỎ', 3, 'Kích thước: L1200 x W600 x H750 mm Chất liệu: Chân sắt hộp 25x 50 sơn tĩnh điện, Mặt bàn gỗ MFC 18mm An Cường', 'Kích thước: L1200 x W600 x H750 mm Chất liệu: Chân sắt hộp 25x 50 sơn tĩnh điện, Mặt bàn gỗ MFC 18mm An Cường', '220000', '77309_350_200_W2.png', 0, NULL, NULL),
(20, 8, 'SLOOPY- GHẾ SOFA', 4, '<p>SLOOPY - Tuyệt đỉnh trong sự thoải m&aacute;i, mềm mại như l&ocirc;ng. L&agrave;m cho ng&agrave;y chủ nhật tuyệt vời hơn bao giờ hết.</p>', '<p>Khung ghế: Gỗ th&ocirc;ng nguy&ecirc;n khối, MDF, lưới l&ograve; xo lượn s&oacute;ng chữ S<br />\r\nĐệm: Vải bọc, l&ocirc;ng vũ, hạt b&ocirc;ng, m&uacute;t c&oacute; độ đ&agrave;n hồi cao<br />\r\nCh&acirc;n ghế: Gỗ sồi nguy&ecirc;n khối, sơn PU ho&agrave;n thiện<br />\r\nBọc ghế: C&oacute; thể th&aacute;o rời<br />\r\nBảo h&agrave;nh: 1 năm<br />\r\nPhương sai m&agrave;u: T&ugrave;y biến<br />\r\nĐiều kiện giao h&agrave;ng: Ho&agrave;n thiện</p>', '9900000', 'product_1290.png', 0, NULL, NULL),
(21, 8, 'GHẾ SOFA - G002', 4, '<p>Mang đến vẻ đẹp hiện đại, h&agrave;o nho&aacute;ng đến từ phong c&aacute;ch Mid-century, ghế sofa G002&nbsp;l&agrave; sự kết hợp giữa vải bọc ghế ngồi sang trọng v&agrave; đường n&eacute;t thiết kế cong hiện đại để tạo ra một chiếc ghế sofa mang đến sự thoải m&aacute;i tối đa v&agrave; sạch sẽ. C&oacute; sẵn c&aacute;c m&agrave;u xanh đậm v&agrave; m&agrave;u x&aacute;m, chỗ ngồi s&acirc;u của ghế Nati sẽ khiến bạn v&agrave; gia đ&igrave;nh cảm thấy thoải m&aacute;i như đang ở nh&agrave;.</p>', '<p>Khung ghế: Gỗ sồi nguy&ecirc;n khối<br />\r\nĐệm: M&uacute;t c&oacute; độ đ&agrave;n hồi cao<br />\r\nCh&acirc;n ghế: Gỗ sồi nguy&ecirc;n khối, sơn PU ho&agrave;n thiện<br />\r\nBọc ghế: Cố định<br />\r\nBảo h&agrave;nh: 1 năm<br />\r\nĐiều kiện giao h&agrave;ng: Lắp r&aacute;p, ch&acirc;n t&aacute;ch rời</p>', '6600000', '74128_350_200_W97.jpg', 0, NULL, NULL),
(22, 8, 'GHẾ THƯ GIẢN GX01', 4, '<p>Nếu bạn đang t&igrave;m kiếm một chỗ ngồi chắc chắn nhưng vẫn đảm bảo sự thoải m&aacute;i, ghế Sofa Hansen sẽ l&agrave; một sự lựa chọn tốt. Sản phẩm n&agrave;y chắc chắn sẽ mang lại cho ng&ocirc;i nh&agrave; của bạn một cảm gi&aacute;c cổ điển v&agrave; thoải m&aacute;i l&agrave;m cho n&oacute; trở n&ecirc;n ho&agrave;n hảo để giải tr&iacute; c&ugrave;ng gia đ&igrave;nh v&agrave; bạn b&egrave;.</p>', '<p>Khung: gỗ<br />\r\nChất độn: bọc sợi, bọt xốp, l&ocirc;ng đ&agrave;n hồi cao<br />\r\nCh&acirc;n: gỗ<br />\r\nLoại b&igrave;a: b&igrave;a cố định<br />\r\nM&agrave;u variance: Disclaimer<br />\r\nKết th&uacute;c: c&oacute; sẵn trong vải<br />\r\nBảo h&agrave;nh: 1 năm<br />\r\nĐiều kiện giao h&agrave;ng: lắp r&aacute;p-ch&acirc;n KD</p>', '4000000', 'product_2233.jpeg', 0, NULL, NULL),
(23, 4, 'ĐÈN DÂY NGÔI SAO', 4, '<p>Được trang ho&agrave;ng trong những dịp đặc biệt, đ&egrave;n led d&acirc;y sẽ mang đến cho bạn nguồn cảm hứng bất tận cho một ph&ograve;ng kh&aacute;ch lung linh &aacute;nh s&aacute;ng.</p>\r\n\r\n<p>&nbsp;</p>', '<p>Cấu tr&uacute;c: th&ocirc;ng rắn, gỗ sồi rắn; Ch&acirc;n: gỗ sồi rắn<br />\r\nUpholstery: Feather, mật độ cao bọt &amp; b&oacute;ng sợi<br />\r\nBảo h&agrave;nh: 1 năm<br />\r\nM&agrave;u variance: Disclaimer<br />\r\nĐiều kiện giao h&agrave;ng: lắp r&aacute;p</p>', '500000', 'Đèn-dây48.jpg', 0, NULL, NULL),
(24, 5, 'BÀN LÀM VIỆC GT02', 4, '<p>K&iacute;ch thước: L1200 x W600 x H750 mm Chất liệu: Ch&acirc;n sắt hộp 25x 50 sơn tĩnh điện, Mặt b&agrave;n gỗ MFC 18mm An Cường</p>', '<p>K&iacute;ch thước: L1200 x W600 x H750 mm Chất liệu: Ch&acirc;n sắt hộp 25x 50 sơn tĩnh điện, Mặt b&agrave;n gỗ MFC 18mm An Cường</p>', '300000', 'ban344.png', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_notes`, `created_at`, `updated_at`) VALUES
(4, 'nguyen hoai an', '1516 đại lộ bình dương khu phố 6 phường định hào TDM bình dương', '0383367670', 'hoaian@gmail.com', 'asd', NULL, NULL),
(5, 'o yeah', '1231', '123', 'test2@gmail.com', '123', NULL, NULL),
(6, 'Hoài Ân', '123', '123', 'test3@gmail.com', '123', NULL, NULL),
(7, 'nguyen hoai an', '2', '0383367670', 'test3@gmail.com', '2', NULL, NULL),
(8, 'Nguyễn Hoài Ân', '1516 bình dương', '0383367670', 'test4@gmail.com', 'nhanh', NULL, NULL),
(9, 'nguyen hoai an', '1516 đại lộ bình dương khu phố 6 phường định hào TDM bình dương', '0383367670', 'hoaian@gmail.com', 'd', NULL, NULL),
(10, 'Trung Kiên', 'bình dương', '0123123123', 'trungkien@gmail.com', '123123', NULL, NULL),
(11, 'Trung Kiên', 'bình dương', '123123123', 'trungkien@gmail.com', '123123', NULL, NULL),
(12, 'nguyen hoai an', '1516 đại lộ bình dương khu phố 6 phường định hào TDM bình dương', '0383367670', 'hoaian@gmail.com', 'zxc', NULL, NULL),
(13, 'Châu', '1516 đại lộ bình dương khu phố 6 phường định hào TDM bình dương', '0383367670', 'hoaian@gmail.com', 'cc', NULL, NULL),
(14, 'Nguyễn Văn Ba', 'CMT8', '0378600126', 'lululu@gmail.com', 'nhớ giao hàng nhanh giùm cái', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
