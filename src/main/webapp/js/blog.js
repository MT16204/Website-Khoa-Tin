function filterPosts(category) {
    // Lấy tất cả bài viết
    var posts = document.querySelectorAll('.blog-posts .post');
    
    // Nếu danh mục là "Tất cả", hiển thị tất cả bài viết
    if (category === 'All') {
        posts.forEach(function(post) {
            post.style.display = 'block';  // Hiển thị tất cả bài viết
        });
    } else {
        // Nếu không, chỉ hiển thị các bài viết thuộc danh mục đã chọn
        posts.forEach(function(post) {
            if (post.getAttribute('data-category') === category) {
                post.style.display = 'block';  // Hiển thị bài viết
            } else {
                post.style.display = 'none';  // Ẩn bài viết
            }
        });
    }
}

// Mặc định hiển thị tất cả bài viết khi trang tải
window.onload = function() {
    filterPosts('All');
};
