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

extension Cpdp {
    /// UploadFile请求参数结构体
    public struct UploadFileRequest: TCRequestModel {
        /// 文件名
        public let fileName: String

        /// 文件类型
        /// __IdCard__:身份证
        /// __IdCardCheck__:身份证加验证(只支持人像面)
        public let fileType: String

        /// 文件链接
        /// __FileUrl和FileContent二选一__
        public let fileUrl: String?

        /// 文件内容，Base64编码
        /// __FileUrl和FileContent二选一__
        public let fileContent: String?

        /// 文件扩展信息
        public let fileExtendInfo: [AnchorExtendInfo]?

        public init(fileName: String, fileType: String, fileUrl: String? = nil, fileContent: String? = nil, fileExtendInfo: [AnchorExtendInfo]? = nil) {
            self.fileName = fileName
            self.fileType = fileType
            self.fileUrl = fileUrl
            self.fileContent = fileContent
            self.fileExtendInfo = fileExtendInfo
        }

        enum CodingKeys: String, CodingKey {
            case fileName = "FileName"
            case fileType = "FileType"
            case fileUrl = "FileUrl"
            case fileContent = "FileContent"
            case fileExtendInfo = "FileExtendInfo"
        }
    }

    /// UploadFile返回参数结构体
    public struct UploadFileResponse: TCResponseModel {
        /// 文件ID
        public let fileId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fileId = "FileId"
            case requestId = "RequestId"
        }
    }

    /// 直播平台-文件上传
    @inlinable
    public func uploadFile(_ input: UploadFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadFileResponse> {
        self.client.execute(action: "UploadFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直播平台-文件上传
    @inlinable
    public func uploadFile(_ input: UploadFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadFileResponse {
        try await self.client.execute(action: "UploadFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直播平台-文件上传
    @inlinable
    public func uploadFile(fileName: String, fileType: String, fileUrl: String? = nil, fileContent: String? = nil, fileExtendInfo: [AnchorExtendInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadFileResponse> {
        let input = UploadFileRequest(fileName: fileName, fileType: fileType, fileUrl: fileUrl, fileContent: fileContent, fileExtendInfo: fileExtendInfo)
        return self.client.execute(action: "UploadFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直播平台-文件上传
    @inlinable
    public func uploadFile(fileName: String, fileType: String, fileUrl: String? = nil, fileContent: String? = nil, fileExtendInfo: [AnchorExtendInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadFileResponse {
        let input = UploadFileRequest(fileName: fileName, fileType: fileType, fileUrl: fileUrl, fileContent: fileContent, fileExtendInfo: fileExtendInfo)
        return try await self.client.execute(action: "UploadFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
