-- --------------------------------------------------------
-- Host:                         192.168.48.135
-- Server version:               5.7.22 - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for crawler-v2
CREATE DATABASE IF NOT EXISTS `crawler-v2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `crawler-v2`;

-- Dumping structure for table crawler-v2.hasaki
CREATE TABLE IF NOT EXISTS `hasaki` (
  `id` bigint(20) unsigned DEFAULT NULL,
  `main_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `main_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sub_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table crawler-v2.hasaki: ~125 rows (approximately)
INSERT IGNORE INTO `hasaki` (`id`, `main_url`, `main_name`, `sub_url`, `parent_id`) VALUES
	(1, 'https://hasaki.vn//danh-muc/suc-khoe-lam-dep-c3.html', 'Sức Khỏe - Làm Đẹp', '<a href="/danh-muc/cham-soc-da-mat-high-end-c1909.html"><strong>Chăm Sóc Da Mặt Cao Cấp</strong></a> <a href="https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212191">Tẩy Trang</a> <a href="https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212189">Sữa Rửa Mặt</a> <a href="https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212205">Toner</a> <a href="https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212183">Serum</a> <a href="https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212199">Kem Dưỡng</a> <div>&nbsp;</div> <a href="/danh-muc/trang-diem-high-end-c1917.html"><strong>Trang Điểm Cao Cấp</strong></a> <a href="https://hasaki.vn/danh-muc/trang-diem-high-end-c1917.html?filter_hsk_product_type=216399">Kem Nền</a> <a href="https://hasaki.vn/danh-muc/trang-diem-high-end-c1917.html?filter_hsk_product_type=212151">Son Thỏi</a> <a href="https://hasaki.vn/danh-muc/trang-diem-high-end-c1917.html?filter_hsk_product_type=212153">Son Kem</a> <div>&nbsp;</div> <a href="/danh-muc/cham-soc-toc-high-end-c1929.html"><strong>Chăm Sóc Tóc Cao Cấp</strong></a> <a href="https://hasaki.vn/danh-muc/cham-soc-toc-high-end-c1929.html?filter_hsk_product_type=212177">Dầu Gội</a> <a href="https://hasaki.vn/danh-muc/cham-soc-toc-high-end-c1929.html?filter_hsk_product_type=217187">Ủ Tóc</a> <a href="https://hasaki.vn/danh-muc/cham-soc-toc-high-end-c1929.html?filter_hsk_product_type=212667">Dưỡng Tóc</a> <div>&nbsp;</div>', 0),
	(2, 'https://hasaki.vn//danh-muc/suc-khoe-lam-dep-c3.html', 'Sức Khỏe - Làm Đẹp', NULL, 0),
	(3, 'https://hasaki.vn//danh-muc/my-pham-high-end-c1907.html', 'Mỹ Phẩm High-End                                                                     ', '<a href="/danh-muc/cham-soc-da-mat-high-end-c1909.html"><strong>Chăm Sóc Da Mặt Cao Cấp</strong></a> <a href="https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212191">Tẩy Trang</a> <a href="https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212189">Sữa Rửa Mặt</a> <a href="https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212205">Toner</a> <a href="https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212183">Serum</a> <a href="https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212199">Kem Dưỡng</a> <div>&nbsp;</div> <a href="/danh-muc/trang-diem-high-end-c1917.html"><strong>Trang Điểm Cao Cấp</strong></a> <a href="https://hasaki.vn/danh-muc/trang-diem-high-end-c1917.html?filter_hsk_product_type=216399">Kem Nền</a> <a href="https://hasaki.vn/danh-muc/trang-diem-high-end-c1917.html?filter_hsk_product_type=212151">Son Thỏi</a> <a href="https://hasaki.vn/danh-muc/trang-diem-high-end-c1917.html?filter_hsk_product_type=212153">Son Kem</a> <div>&nbsp;</div> <a href="/danh-muc/cham-soc-toc-high-end-c1929.html"><strong>Chăm Sóc Tóc Cao Cấp</strong></a> <a href="https://hasaki.vn/danh-muc/cham-soc-toc-high-end-c1929.html?filter_hsk_product_type=212177">Dầu Gội</a> <a href="https://hasaki.vn/danh-muc/cham-soc-toc-high-end-c1929.html?filter_hsk_product_type=217187">Ủ Tóc</a> <a href="https://hasaki.vn/danh-muc/cham-soc-toc-high-end-c1929.html?filter_hsk_product_type=212667">Dưỡng Tóc</a> <div>&nbsp;</div>', 0),
	(4, 'https://hasaki.vn//danh-muc/cham-soc-da-mat-c4.html', 'Chăm Sóc Da Mặt                                                                     ', '<a href="/danh-muc/lam-sach-da-c1855.html"><strong>Làm Sạch Da</strong></a> <a href="/danh-muc/tay-trang-mat-c48.html">Tẩy Trang Mặt</a> <a href="/danh-muc/sua-rua-mat-c19.html">Sữa Rửa Mặt</a> <a href="/danh-muc/tay-te-bao-chet-da-mat-c35.html">Tẩy Tế Bào Chết Da Mặt</a> <a href="/danh-muc/toner-c1857.html">Toner / Nước Cân Bằng Da</a> <div>&nbsp;</div> <a href="/danh-muc/dac-tri-c1865.html"><strong>Đặc Trị</strong></a> <a href="/danh-muc/serum-tinh-chat-c75.html">Serum / Tinh Chất</a> <a href="/danh-muc/ho-tro-tri-mun-c2005.html">Hỗ Trợ Trị Mụn</a> <div>&nbsp;</div> <a href="/danh-muc/duong-am-da-c1863.html"><strong>Dưỡng Ẩm</strong></a> <a href="/danh-muc/xit-khoang-c7.html">Xịt Khoáng</a> <a href="/danh-muc/lotion-sua-duong-c2011.html">Lotion / Sữa Dưỡng</a> <a href="/danh-muc/kem-duong-dau-duong-c9.html">Kem / Gel / Dầu Dưỡng</a> <div>&nbsp;</div> <a href="/danh-muc/cham-soc-vung-da-mat-c297.html"><strong>Dưỡng Mắt</strong></a> <a href="/danh-muc/cham-soc-moi-c2059.html"><strong>Dưỡng Môi</strong></a>', 0),
	(5, 'https://hasaki.vn//danh-muc/trang-diem-c23.html', 'Trang Điểm                                                                     ', '<a href="/danh-muc/trang-diem-mat-c52.html"><strong>Trang Điểm Mặt</strong></a> <a href="/danh-muc/kem-lot-c55.html">Kem Lót</a> <a href="/danh-muc/kem-nen-c178.html">Kem Nền</a> <a href="/danh-muc/phan-nuoc-cushion-c252.html">Phấn Nước Cushion</a> <a href="/danh-muc/che-khuyet-diem-c54.html">Che Khuyết Điểm</a> <a href="/danh-muc/phan-ma-hong-c56.html">Má Hồng</a> <a href="/danh-muc/high-light-tao-khoi-c191.html">Tạo Khối / Highlight</a> <a href="/danh-muc/phan-phu-c57.html">Phấn Phủ</a> <div>&nbsp;</div> <a href="/danh-muc/trang-diem-vung-mat-c50.html"><strong>Trang Điểm Mắt</strong></a> <a href="/danh-muc/ke-mat-c58.html">Kẻ Mắt</a> <a href="/danh-muc/ke-chan-may-c51.html">Kẻ Mày</a> <a href="/danh-muc/phan-mat-c60.html">Phấn Mắt</a> <a href="/danh-muc/mascara-c109.html">Mascara</a> <div>&nbsp;</div> <a href="/danh-muc/bo-trang-diem-c2174.html"><strong>Bộ Trang Điểm</strong></a>', 0),
	(6, 'https://hasaki.vn//danh-muc/cham-soc-toc-c96.html', 'Chăm Sóc Tóc Và Da Đầu                                                                     ', '<a href="/danh-muc/dau-goi-va-dau-xa-c2144.html"><strong>Dầu Gội Và Dầu Xả</strong></a> <a href="/danh-muc/dau-goi-c97.html">Dầu Gội</a> <a href="/danh-muc/dau-xa-c136.html">Dầu Xả</a> <a href="/danh-muc/dau-goi-xa-2in1-c2150.html">Dầu Gội Xả 2in1</a> <a href="/danh-muc/bo-goi-xa-c2152.html">Bộ Gội Xả</a> <div>&nbsp;</div> <a href="/danh-muc/tay-te-bao-chet-da-dau-c2162.html"><strong>Tẩy Tế Bào Chết Da Đầu</strong></a> <a href="/danh-muc/duong-toc-c193.html"><strong>Dưỡng Tóc</strong></a> <a href="/danh-muc/mat-na-kem-u-toc-c110.html">Mặt Nạ / Kem Ủ Tóc</a> <a href="/danh-muc/dau-xit-duong-toc-c102.html">Serum / Dầu Dưỡng Tóc</a> <a href="/danh-muc/xit-duong-toc-c137.html">Xịt Dưỡng Tóc</a> <div>&nbsp;</div> <a href="/danh-muc/thuoc-nhuom-uon-duoi-c296.html"><strong>Thuốc Nhuộm Tóc</strong></a> <a href="/danh-muc/tao-kieu-toc-c2101.html"><strong>Sản Phẩm Tạo Kiểu Tóc</strong></a> <a href="/danh-muc/dung-cu-cham-soc-toc-c2154.html"><strong>Dụng Cụ Chăm Sóc Tóc</strong></a> <a href="/danh-muc/bo-cham-soc-toc-c133.html"><strong>Bộ Chăm Sóc Tóc</strong></a>', 0),
	(7, 'https://hasaki.vn//danh-muc/cham-soc-co-the-c12.html', 'Chăm Sóc Cơ Thể                                                                     ', '<a href="/danh-muc/sua-tam-xa-bong-tam-c26.html"><strong>Sữa Tắm</strong></a> <a href="/danh-muc/xa-bong-tam-c2075.html"><strong>Xà Phòng</strong></a> <a href="/danh-muc/tay-te-bao-chet-toan-than-c128.html"><strong>Tẩy Tế Bào Chết Body</strong></a> <a href="/danh-muc/duong-the-c1897.html"><strong>Dưỡng Thể</strong></a> <a href="/danh-muc/duong-am-da-tay-chan-c65.html"><strong>Dưỡng Da Tay / Chân</strong></a> <a href="/danh-muc/chong-nang-toan-than-c13.html"><strong>Chống Nắng Cơ Thể</strong></a> <a href="/danh-muc/khu-mui-c1899.html"><strong>Khử Mùi</strong></a> <a href="/danh-muc/lan-xit-khu-mui-c279.html">Lăn Khử Mùi</a> <a href="/danh-muc/xit-khu-mui-c2128.html">Xịt Khử Mùi</a> <a href="/danh-muc/sap-khu-mui-c2126.html">Sáp Khử Mùi</a> <div>&nbsp;</div> <a href="/danh-muc/tay-long-triet-long-c116.html"><strong>Tẩy Lông / Triệt Lông</strong></a> <a href="/danh-muc/kem-tay-long-c2037.html">Kem Tẩy Lông</a> <a href="/danh-muc/dung-cu-tay-long-c2093.html">Dụng Cụ Tẩy Lông</a> <div>&nbsp;</div> <a href="/danh-muc/bo-cham-soc-co-the-c2190.html"><strong>Bộ Chăm Sóc Cơ Thể</strong></a>', 0),
	(8, 'https://hasaki.vn//danh-muc/cham-soc-ca-nhan-c2049.html', 'Chăm Sóc Cá Nhân                                                                     ', '<a href="/danh-muc/ve-sinh-phu-nu-c1901.html"><strong>Chăm Sóc Phụ Nữ</strong></a> <a href="/danh-muc/bang-ve-sinh-c1903.html">Băng Vệ Sinh</a> <a href="/danh-muc/dung-dich-ve-sinh-c207.html">Dung Dịch Vệ Sinh</a> <a href="/danh-muc/duong-vung-kin-c2194.html">Dưỡng Vùng Kín</a> <a href="/danh-muc/mieng-dan-nguc-c2196.html">Miếng Dán Ngực</a> <div>&nbsp;</div> <a href="/danh-muc/cham-soc-rang-mieng-c323.html"><strong>Chăm Sóc Răng Miệng</strong></a> <a href="/danh-muc/ban-chai-danh-rang-c2029.html">Bàn Chải Đánh Răng</a> <a href="/danh-muc/ban-chai-dien-phu-kien-c2200.html">Bàn Chải Điện / Phụ Kiện</a> <a href="/danh-muc/kem-danh-rang-c2025.html">Kem Đánh Răng</a> <a href="/danh-muc/nuoc-suc-mieng-c2033.html">Nước Súc Miệng</a> <a href="/danh-muc/tam-nuoc-chi-nha-khoa-c2035.html">Tăm Nước / Chỉ Nha Khoa</a> <a href="/danh-muc/xit-thom-mieng-c324.html">Xịt Thơm Miệng</a> <div>&nbsp;</div> <a href="/danh-muc/khan-giay-khan-uot-c2097.html"><strong>Khăn Giấy / Khăn Ướt</strong></a> <a href="/danh-muc/khu-mui-lam-thom-phong-c2192.html"><strong>Khử Mùi / Làm Thơm Phòng</strong></a>', 0),
	(9, 'https://hasaki.vn//danh-muc/nuoc-hoa-c103.html', 'Nước Hoa                                                                     ', '<a href="/danh-muc/nuoc-hoa-nu-c1937.html"><strong>Nước Hoa Nữ</strong></a> <a href="https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=220948">Carolina Herrera</a> <a href="https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=1453">Chloé</a> <a href="https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=216503">De Memoria</a> <a href="https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=221102">Diamond</a> <a href="https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=217331">Gennie</a> <a href="https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=202">Lancôme</a> <a href="https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=208606">Laura Anne</a> <a href="https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=1411">Marc Jacobs</a> <a href="https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=213249">Moschino</a> <a href="https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=222761">Narciso Rodriguez</a> <a href="https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=222765">Issey Miyake</a> <a href="https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=8556">Salvatore Ferragamo</a> <a href="https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=219827">Verites</a> <div>&nbsp;</div>', 0),
	(10, 'https://hasaki.vn//danh-muc/thuc-pham-chuc-nang-c156.html', 'Thực Phẩm Chức Năng                                                                     ', '<a href="/danh-muc/lam-dep-c1995.html"><strong>Hỗ Trợ Làm Đẹp</strong></a> <a href="/danh-muc/lam-dep-da-c194.html">Làm Đẹp Da</a> <a href="/danh-muc/lam-dep-toc-c302.html">Làm Đẹp Tóc</a> <a href="/danh-muc/san-pham-giam-can-c195.html">Hỗ Trợ Giảm Cân</a> <div>&nbsp;</div> <a href="/danh-muc/suc-khoe-c1997.html"><strong>Hỗ Trợ Sức Khỏe</strong></a> <a href="/danh-muc/bo-gan-giai-ruou-c309.html">Bổ Gan / Giải Rượu</a> <a href="/danh-muc/bo-mat-bo-nao-c312.html">Dầu Cá / Bổ Mắt</a> <a href="/danh-muc/hoat-huyet-duong-nao-c2182.html">Hoạt Huyết Dưỡng Não</a> <a href="/danh-muc/ho-tro-sinh-ly-noi-tiet-to-c321.html">Hỗ Trợ Sinh Lý / Nội Tiết Tố</a> <a href="/danh-muc/ho-tro-tieu-hoa-c308.html">Hỗ Trợ Tiêu Hoá</a> <a href="/danh-muc/tim-mach-c311.html">Hỗ Trợ Tim Mạch</a> <a href="/danh-muc/ho-tro-xuong-khop-c307.html">Hỗ Trợ Xương Khớp</a> <a href="/danh-muc/tang-suc-de-khang-c305.html">Tăng Sức Đề Kháng</a> <a href="/danh-muc/vitamin-khoang-chat-c2186.html">Vitamin / Khoáng Chất</a> <div>&nbsp;</div>', 0),
	(11, 'https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html', 'Chăm Sóc Da Mặt Cao Cấp', NULL, 1),
	(12, 'https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212191', 'Tẩy Trang', NULL, 1),
	(13, 'https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212189', 'Sữa Rửa Mặt', NULL, 1),
	(14, 'https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212205', 'Toner', NULL, 1),
	(15, 'https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212183', 'Serum', NULL, 1),
	(16, 'https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212199', 'Kem Dưỡng', NULL, 1),
	(17, ' https://hasaki.vn/danh-muc/trang-diem-high-end-c1917.html', 'Trang Điểm Cao Cấp', NULL, 1),
	(18, 'https://hasaki.vn/danh-muc/trang-diem-high-end-c1917.html?filter_hsk_product_type=216399', 'Kem Nền', NULL, 1),
	(19, 'https://hasaki.vn/danh-muc/trang-diem-high-end-c1917.html?filter_hsk_product_type=212151', 'Son Thỏi', NULL, 1),
	(20, 'https://hasaki.vn/danh-muc/trang-diem-high-end-c1917.html?filter_hsk_product_type=212153', 'Son Kem', NULL, 1),
	(21, ' https://hasaki.vn/danh-muc/cham-soc-toc-high-end-c1929.html', 'Chăm Sóc Tóc Cao Cấp', NULL, 1),
	(22, 'https://hasaki.vn/danh-muc/cham-soc-toc-high-end-c1929.html?filter_hsk_product_type=212177', 'Dầu Gội', NULL, 1),
	(23, 'https://hasaki.vn/danh-muc/cham-soc-toc-high-end-c1929.html?filter_hsk_product_type=217187', 'Ủ Tóc', NULL, 1),
	(24, 'https://hasaki.vn/danh-muc/cham-soc-toc-high-end-c1929.html?filter_hsk_product_type=212667', 'Dưỡng Tóc', NULL, 1),
	(25, 'https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html', 'Chăm Sóc Da Mặt Cao Cấp', NULL, 3),
	(26, 'https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212191', 'Tẩy Trang', NULL, 3),
	(27, 'https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212189', 'Sữa Rửa Mặt', NULL, 3),
	(28, 'https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212205', 'Toner', NULL, 3),
	(29, 'https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212183', 'Serum', NULL, 3),
	(30, 'https://hasaki.vn/danh-muc/cham-soc-da-mat-high-end-c1909.html?filter_hsk_product_type=212199', 'Kem Dưỡng', NULL, 3),
	(31, ' https://hasaki.vn/danh-muc/trang-diem-high-end-c1917.html', 'Trang Điểm Cao Cấp', NULL, 3),
	(32, 'https://hasaki.vn/danh-muc/trang-diem-high-end-c1917.html?filter_hsk_product_type=216399', 'Kem Nền', NULL, 3),
	(33, 'https://hasaki.vn/danh-muc/trang-diem-high-end-c1917.html?filter_hsk_product_type=212151', 'Son Thỏi', NULL, 3),
	(34, 'https://hasaki.vn/danh-muc/trang-diem-high-end-c1917.html?filter_hsk_product_type=212153', 'Son Kem', NULL, 3),
	(35, ' https://hasaki.vn/danh-muc/cham-soc-toc-high-end-c1929.html', 'Chăm Sóc Tóc Cao Cấp', NULL, 3),
	(36, 'https://hasaki.vn/danh-muc/cham-soc-toc-high-end-c1929.html?filter_hsk_product_type=212177', 'Dầu Gội', NULL, 3),
	(37, 'https://hasaki.vn/danh-muc/cham-soc-toc-high-end-c1929.html?filter_hsk_product_type=217187', 'Ủ Tóc', NULL, 3),
	(38, 'https://hasaki.vn/danh-muc/cham-soc-toc-high-end-c1929.html?filter_hsk_product_type=212667', 'Dưỡng Tóc', NULL, 3),
	(39, 'https://hasaki.vn/danh-muc/lam-sach-da-c1855.html', 'Làm Sạch Da', NULL, 4),
	(40, 'https://hasaki.vn /danh-muc/tay-trang-mat-c48.html', 'Tẩy Trang Mặt', NULL, 4),
	(41, 'https://hasaki.vn /danh-muc/sua-rua-mat-c19.html', 'Sữa Rửa Mặt', NULL, 4),
	(42, 'https://hasaki.vn /danh-muc/tay-te-bao-chet-da-mat-c35.html', 'Tẩy Tế Bào Chết Da Mặt', NULL, 4),
	(43, 'https://hasaki.vn /danh-muc/toner-c1857.html', 'Toner / Nước Cân Bằng Da', NULL, 4),
	(44, ' https://hasaki.vn/danh-muc/dac-tri-c1865.html', 'Đặc Trị', NULL, 4),
	(45, 'https://hasaki.vn /danh-muc/serum-tinh-chat-c75.html', 'Serum / Tinh Chất', NULL, 4),
	(46, 'https://hasaki.vn /danh-muc/ho-tro-tri-mun-c2005.html', 'Hỗ Trợ Trị Mụn', NULL, 4),
	(47, ' https://hasaki.vn/danh-muc/duong-am-da-c1863.html', 'Dưỡng Ẩm', NULL, 4),
	(48, 'https://hasaki.vn /danh-muc/xit-khoang-c7.html', 'Xịt Khoáng', NULL, 4),
	(49, 'https://hasaki.vn /danh-muc/lotion-sua-duong-c2011.html', 'Lotion / Sữa Dưỡng', NULL, 4),
	(50, 'https://hasaki.vn /danh-muc/kem-duong-dau-duong-c9.html', 'Kem / Gel / Dầu Dưỡng', NULL, 4),
	(51, ' https://hasaki.vn/danh-muc/cham-soc-vung-da-mat-c297.html', 'Dưỡng Mắt', NULL, 4),
	(52, ' https://hasaki.vn/danh-muc/cham-soc-moi-c2059.html', 'Dưỡng Môi', NULL, 4),
	(53, 'https://hasaki.vn/danh-muc/trang-diem-mat-c52.html', 'Trang Điểm Mặt', NULL, 5),
	(54, 'https://hasaki.vn /danh-muc/kem-lot-c55.html', 'Kem Lót', NULL, 5),
	(55, 'https://hasaki.vn /danh-muc/kem-nen-c178.html', 'Kem Nền', NULL, 5),
	(56, 'https://hasaki.vn /danh-muc/phan-nuoc-cushion-c252.html', 'Phấn Nước Cushion', NULL, 5),
	(57, 'https://hasaki.vn /danh-muc/che-khuyet-diem-c54.html', 'Che Khuyết Điểm', NULL, 5),
	(58, 'https://hasaki.vn /danh-muc/phan-ma-hong-c56.html', 'Má Hồng', NULL, 5),
	(59, 'https://hasaki.vn /danh-muc/high-light-tao-khoi-c191.html', 'Tạo Khối / Highlight', NULL, 5),
	(60, 'https://hasaki.vn /danh-muc/phan-phu-c57.html', 'Phấn Phủ', NULL, 5),
	(61, ' https://hasaki.vn/danh-muc/trang-diem-vung-mat-c50.html', 'Trang Điểm Mắt', NULL, 5),
	(62, 'https://hasaki.vn /danh-muc/ke-mat-c58.html', 'Kẻ Mắt', NULL, 5),
	(63, 'https://hasaki.vn /danh-muc/ke-chan-may-c51.html', 'Kẻ Mày', NULL, 5),
	(64, 'https://hasaki.vn /danh-muc/phan-mat-c60.html', 'Phấn Mắt', NULL, 5),
	(65, 'https://hasaki.vn /danh-muc/mascara-c109.html', 'Mascara', NULL, 5),
	(66, ' https://hasaki.vn/danh-muc/bo-trang-diem-c2174.html', 'Bộ Trang Điểm', NULL, 5),
	(67, 'https://hasaki.vn/danh-muc/dau-goi-va-dau-xa-c2144.html', 'Dầu Gội Và Dầu Xả', NULL, 6),
	(68, 'https://hasaki.vn /danh-muc/dau-goi-c97.html', 'Dầu Gội', NULL, 6),
	(69, 'https://hasaki.vn /danh-muc/dau-xa-c136.html', 'Dầu Xả', NULL, 6),
	(70, 'https://hasaki.vn /danh-muc/dau-goi-xa-2in1-c2150.html', 'Dầu Gội Xả 2in1', NULL, 6),
	(71, 'https://hasaki.vn /danh-muc/bo-goi-xa-c2152.html', 'Bộ Gội Xả', NULL, 6),
	(72, ' https://hasaki.vn/danh-muc/tay-te-bao-chet-da-dau-c2162.html', 'Tẩy Tế Bào Chết Da Đầu', NULL, 6),
	(73, ' https://hasaki.vn/danh-muc/duong-toc-c193.html', 'Dưỡng Tóc', NULL, 6),
	(74, 'https://hasaki.vn /danh-muc/mat-na-kem-u-toc-c110.html', 'Mặt Nạ / Kem Ủ Tóc', NULL, 6),
	(75, 'https://hasaki.vn /danh-muc/dau-xit-duong-toc-c102.html', 'Serum / Dầu Dưỡng Tóc', NULL, 6),
	(76, 'https://hasaki.vn /danh-muc/xit-duong-toc-c137.html', 'Xịt Dưỡng Tóc', NULL, 6),
	(77, ' https://hasaki.vn/danh-muc/thuoc-nhuom-uon-duoi-c296.html', 'Thuốc Nhuộm Tóc', NULL, 6),
	(78, ' https://hasaki.vn/danh-muc/tao-kieu-toc-c2101.html', 'Sản Phẩm Tạo Kiểu Tóc', NULL, 6),
	(79, ' https://hasaki.vn/danh-muc/dung-cu-cham-soc-toc-c2154.html', 'Dụng Cụ Chăm Sóc Tóc', NULL, 6),
	(80, ' https://hasaki.vn/danh-muc/bo-cham-soc-toc-c133.html', 'Bộ Chăm Sóc Tóc', NULL, 6),
	(81, 'https://hasaki.vn/danh-muc/sua-tam-xa-bong-tam-c26.html', 'Sữa Tắm', NULL, 7),
	(82, ' https://hasaki.vn/danh-muc/xa-bong-tam-c2075.html', 'Xà Phòng', NULL, 7),
	(83, ' https://hasaki.vn/danh-muc/tay-te-bao-chet-toan-than-c128.html', 'Tẩy Tế Bào Chết Body', NULL, 7),
	(84, ' https://hasaki.vn/danh-muc/duong-the-c1897.html', 'Dưỡng Thể', NULL, 7),
	(85, ' https://hasaki.vn/danh-muc/duong-am-da-tay-chan-c65.html', 'Dưỡng Da Tay  Chân', NULL, 7),
	(86, ' https://hasaki.vn/danh-muc/chong-nang-toan-than-c13.html', 'Chống Nắng Cơ Thể', NULL, 7),
	(87, ' https://hasaki.vn/danh-muc/khu-mui-c1899.html', 'Khử Mùi', NULL, 7),
	(88, 'https://hasaki.vn /danh-muc/lan-xit-khu-mui-c279.html', 'Lăn Khử Mùi', NULL, 7),
	(89, 'https://hasaki.vn /danh-muc/xit-khu-mui-c2128.html', 'Xịt Khử Mùi', NULL, 7),
	(90, 'https://hasaki.vn /danh-muc/sap-khu-mui-c2126.html', 'Sáp Khử Mùi', NULL, 7),
	(91, ' https://hasaki.vn/danh-muc/tay-long-triet-long-c116.html', 'Tẩy Lông  Triệt Lông', NULL, 7),
	(92, 'https://hasaki.vn /danh-muc/kem-tay-long-c2037.html', 'Kem Tẩy Lông', NULL, 7),
	(93, 'https://hasaki.vn /danh-muc/dung-cu-tay-long-c2093.html', 'Dụng Cụ Tẩy Lông', NULL, 7),
	(94, ' https://hasaki.vn/danh-muc/bo-cham-soc-co-the-c2190.html', 'Bộ Chăm Sóc Cơ Thể', NULL, 7),
	(95, 'https://hasaki.vn/danh-muc/ve-sinh-phu-nu-c1901.html', 'Chăm Sóc Phụ Nữ', NULL, 8),
	(96, 'https://hasaki.vn /danh-muc/bang-ve-sinh-c1903.html', 'Băng Vệ Sinh', NULL, 8),
	(97, 'https://hasaki.vn /danh-muc/dung-dich-ve-sinh-c207.html', 'Dung Dịch Vệ Sinh', NULL, 8),
	(98, 'https://hasaki.vn /danh-muc/duong-vung-kin-c2194.html', 'Dưỡng Vùng Kín', NULL, 8),
	(99, 'https://hasaki.vn /danh-muc/mieng-dan-nguc-c2196.html', 'Miếng Dán Ngực', NULL, 8),
	(100, ' https://hasaki.vn/danh-muc/cham-soc-rang-mieng-c323.html', 'Chăm Sóc Răng Miệng', NULL, 8),
	(101, 'https://hasaki.vn /danh-muc/ban-chai-danh-rang-c2029.html', 'Bàn Chải Đánh Răng', NULL, 8),
	(102, 'https://hasaki.vn /danh-muc/ban-chai-dien-phu-kien-c2200.html', 'Bàn Chải Điện / Phụ Kiện', NULL, 8),
	(103, 'https://hasaki.vn /danh-muc/kem-danh-rang-c2025.html', 'Kem Đánh Răng', NULL, 8),
	(104, 'https://hasaki.vn /danh-muc/nuoc-suc-mieng-c2033.html', 'Nước Súc Miệng', NULL, 8),
	(105, 'https://hasaki.vn /danh-muc/tam-nuoc-chi-nha-khoa-c2035.html', 'Tăm Nước / Chỉ Nha Khoa', NULL, 8),
	(106, 'https://hasaki.vn /danh-muc/xit-thom-mieng-c324.html', 'Xịt Thơm Miệng', NULL, 8),
	(107, ' https://hasaki.vn/danh-muc/khan-giay-khan-uot-c2097.html', 'Khăn Giấy  Khăn Ướt', NULL, 8),
	(109, ' https://hasaki.vn/danh-muc/khu-mui-lam-thom-phong-c2192.html', 'Khử Mùi  Làm Thơm Phòng', NULL, 8),
	(109, 'https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html', 'Nước Hoa Nữ', NULL, 9),
	(110, 'https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=220948', 'Carolina Herrera', NULL, 9),
	(111, 'https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=1453', 'Chloé', NULL, 9),
	(112, 'https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=216503', 'De Memoria', NULL, 9),
	(113, 'https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=221102', 'Diamond', NULL, 9),
	(114, 'https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=217331', 'Gennie', NULL, 9),
	(115, 'https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=202', 'Lancôme', NULL, 9),
	(116, 'https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=208606', 'Laura Anne', NULL, 9),
	(117, 'https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=1411', 'Marc Jacobs', NULL, 9),
	(118, 'https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=213249', 'Moschino', NULL, 9),
	(119, 'https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=222761', 'Narciso Rodriguez', NULL, 9),
	(120, 'https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=222765', 'Issey Miyake', NULL, 9),
	(121, 'https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=8556', 'Salvatore Ferragamo', NULL, 9),
	(122, 'https://hasaki.vn/danh-muc/nuoc-hoa-nu-c1937.html?filter_brand=219827', 'Verites', NULL, 9),
	(123, 'https://hasaki.vn/danh-muc/lam-dep-c1995.html', 'Hỗ Trợ Làm Đẹp', NULL, 10),
	(124, 'https://hasaki.vn /danh-muc/lam-dep-da-c194.html', 'Làm Đẹp Da', NULL, 10),
	(125, 'https://hasaki.vn /danh-muc/lam-dep-toc-c302.html', 'Làm Đẹp Tóc', NULL, 10);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
