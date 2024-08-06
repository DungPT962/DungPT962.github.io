Báo Cáo Dự Án: Ứng Dụng CRUD với Xác Thực
Tên Dự Án: Ứng Dụng CRUD với Xác Thực
Công Nghệ Sử Dụng:
•	Backend: Spring Boot (phiên bản 3.3.2)
•	Cơ Sở Dữ Liệu: PostgreSQL (Chạy trên Docker)
•	Công Cụ Xây Dựng: Maven
•	Bảo Mật API: Spring Security (với JWT cho xác thực)
•	Chạy Ứng Dụng trong Container: Docker
Mục Tiêu:
Mục tiêu của dự án này là phát triển một ứng dụng CRUD (Create, Read, Update, Delete) và mở rộng để quản lý dữ liệu người dùng, kết hợp các tính năng xác thực và phân quyền để bảo mật các endpoint API.
________________________________________
Tính Năng
1.	Hoạt động CRUD:
o	Triển khai các endpoint cho việc tạo, đọc, cập nhật và xóa thông tin người dùng.
2.	Xác thực:
o	Tích hợp JWT (JSON Web Tokens) để xác thực người dùng một cách an toàn.
o	Triển khai chức năng đăng nhập và đăng xuất.
3.	Phân quyền:
o	Kiểm soát truy cập dựa trên vai trò để hạn chế quyền truy cập vào một số endpoint API dựa trên vai trò của người dùng.
4.	Cơ Sở Dữ Liệu Chạy trên Docker:
o	Sử dụng Docker để chạy PostgreSQL như một cơ sở dữ liệu trong container.
o	Đơn giản hóa quản lý và triển khai cơ sở dữ liệu bằng cách sử dụng docker-compose.
5.	Maven Wrapper:
o	Sử dụng Maven Wrapper để quản lý việc xây dựng và phụ thuộc, đảm bảo tính nhất quán giữa các môi trường phát triển.
________________________________________
Cấu Trúc Dự Án
•	Mã Nguồn: Nằm trong thư mục src/main/java.
•	Tài Nguyên: Tập tin cấu hình nằm trong src/main/resources.
•	Kiểm Tra: Các bài kiểm tra đơn vị và tích hợp được đặt trong thư mục src/test/java.
•	Cấu Hình Docker:
o	Dockerfile cho ứng dụng Spring Boot.
o	docker-compose.yml để thiết lập PostgreSQL.
________________________________________
Hướng Dẫn Thiết Lập
1.	Clone Kho Lưu Trữ: Clone dự án từ hệ thống kiểm soát phiên bản (ví dụ: GitHub).
2.	Điều Hướng đến Thư Mục Dự Án: Mở terminal và thay đổi đến thư mục dự án.
3.	Thiết Lập Bí Mật: Tạo một thư mục secrets chứa db_password.txt và jwt_secret.txt cho thông tin nhạy cảm.
4.	Xây Dựng Ứng Dụng:
o	Sử dụng lệnh Maven:
bash
Copy code
./mvnw clean package
5.	Khởi Động Các Container Docker:
o	Chạy lệnh sau để khởi động ứng dụng và cơ sở dữ liệu PostgreSQL:
bash
Copy code
docker-compose up --build
6.	Truy Cập Ứng Dụng:
o	Ứng dụng chạy tại http://localhost:8080.
________________________________________
Kết Luận
Dự án này đã thành công trong việc chứng minh việc tạo ra một ứng dụng Spring Boot với các hoạt động CRUD an toàn, sử dụng JWT cho xác thực và phân quyền. Việc sử dụng Docker để quản lý cơ sở dữ liệu PostgreSQL nâng cao tính di động và dễ dàng triển khai. Các cải tiến trong tương lai có thể bao gồm việc tinh chỉnh giao diện người dùng, thêm logic kinh doanh phức tạp hơn, và cải thiện xử lý lỗi và ghi log.

