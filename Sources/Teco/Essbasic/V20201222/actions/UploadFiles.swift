//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Essbasic {
    /// UploadFiles请求参数结构体
    public struct UploadFilesRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller

        /// 文件对应业务类型，用于区分文件存储路径：
        /// 1. TEMPLATE - 模版； 文件类型：.pdf/.html
        /// 2. DOCUMENT - 签署过程及签署后的合同文档 文件类型：.pdf/.html
        /// 3. FLOW - 签署过程 文件类型：.pdf/.html
        /// 4. SEAL - 印章； 文件类型：.jpg/.jpeg/.png
        /// 5. BUSINESSLICENSE - 营业执照 文件类型：.jpg/.jpeg/.png
        /// 6. IDCARD - 身份证 文件类型：.jpg/.jpeg/.png
        public let businessType: String

        /// 上传文件内容数组，最多支持20个文件
        public let fileInfos: [UploadFile]?

        /// 上传文件链接数组，最多支持20个URL
        public let fileUrls: [String]?

        /// 是否将pdf灰色矩阵置白
        /// true--是，处理置白
        /// false--否，不处理
        public let coverRect: Bool?

        /// 特殊文件类型需要指定文件类型：
        /// HTML-- .html文件
        public let fileType: String?

        /// 用户自定义ID数组，与上传文件一一对应
        public let customIds: [String]?

        public init(caller: Caller, businessType: String, fileInfos: [UploadFile]? = nil, fileUrls: [String]? = nil, coverRect: Bool? = nil, fileType: String? = nil, customIds: [String]? = nil) {
            self.caller = caller
            self.businessType = businessType
            self.fileInfos = fileInfos
            self.fileUrls = fileUrls
            self.coverRect = coverRect
            self.fileType = fileType
            self.customIds = customIds
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case businessType = "BusinessType"
            case fileInfos = "FileInfos"
            case fileUrls = "FileUrls"
            case coverRect = "CoverRect"
            case fileType = "FileType"
            case customIds = "CustomIds"
        }
    }

    /// UploadFiles返回参数结构体
    public struct UploadFilesResponse: TCResponseModel {
        /// 文件id数组
        public let fileIds: [String]

        /// 上传成功文件数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fileIds = "FileIds"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 文件上传
    ///
    /// 此接口（UploadFiles）用于文件上传。
    @inlinable
    public func uploadFiles(_ input: UploadFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadFilesResponse> {
        self.client.execute(action: "UploadFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 文件上传
    ///
    /// 此接口（UploadFiles）用于文件上传。
    @inlinable
    public func uploadFiles(_ input: UploadFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadFilesResponse {
        try await self.client.execute(action: "UploadFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 文件上传
    ///
    /// 此接口（UploadFiles）用于文件上传。
    @inlinable
    public func uploadFiles(caller: Caller, businessType: String, fileInfos: [UploadFile]? = nil, fileUrls: [String]? = nil, coverRect: Bool? = nil, fileType: String? = nil, customIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadFilesResponse> {
        self.uploadFiles(.init(caller: caller, businessType: businessType, fileInfos: fileInfos, fileUrls: fileUrls, coverRect: coverRect, fileType: fileType, customIds: customIds), region: region, logger: logger, on: eventLoop)
    }

    /// 文件上传
    ///
    /// 此接口（UploadFiles）用于文件上传。
    @inlinable
    public func uploadFiles(caller: Caller, businessType: String, fileInfos: [UploadFile]? = nil, fileUrls: [String]? = nil, coverRect: Bool? = nil, fileType: String? = nil, customIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadFilesResponse {
        try await self.uploadFiles(.init(caller: caller, businessType: businessType, fileInfos: fileInfos, fileUrls: fileUrls, coverRect: coverRect, fileType: fileType, customIds: customIds), region: region, logger: logger, on: eventLoop)
    }
}
