class ApiResponse<T> {
  final bool success;
  final T? data;
  final String? message;
  final String? error;

  ApiResponse({required this.success, this.data, this.message, this.error});

  factory ApiResponse.fromJson(
    Object? json,
    T Function(Object? json)? fromJsonT,
  ) {
    if (json is List) {
      return ApiResponse<T>(
        success: true,
        data: fromJsonT != null ? fromJsonT(json) : null,
      );
    }

    final map = json is Map
        ? Map<String, dynamic>.from(json)
        : <String, dynamic>{};

    return ApiResponse<T>(
      success: map['success'] ?? false,
      data: (map['data'] != null && fromJsonT != null)
          ? fromJsonT(map['data'])
          : null,
      message: map['message'],
      error: map['error'],
    );
  }
}
