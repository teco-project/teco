//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Cr {
    /// UploadFile请求参数结构体
    public struct UploadFileRequest: TCRequestModel {
        /// 模块名
        public let module: String

        /// 操作名
        public let operation: String

        /// 文件上传地址，要求地址协议为HTTPS，且URL端口必须为443
        public let fileUrl: String

        /// 文件名
        public let fileName: String

        /// 文件日期
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var fileDate: Date

        public init(module: String = "Data", operation: String = "UploadFile", fileUrl: String, fileName: String, fileDate: Date) {
            self.module = module
            self.operation = operation
            self.fileUrl = fileUrl
            self.fileName = fileName
            self._fileDate = .init(wrappedValue: fileDate)
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case fileUrl = "FileUrl"
            case fileName = "FileName"
            case fileDate = "FileDate"
        }
    }

    /// UploadFile返回参数结构体
    public struct UploadFileResponse: TCResponseModel {
        /// 任务ID
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 上传数据文件
    ///
    /// 客户通过调用该接口上传需催收文档，格式需为excel格式。接口返回任务ID。
    @inlinable
    public func uploadFile(_ input: UploadFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadFileResponse> {
        self.client.execute(action: "UploadFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上传数据文件
    ///
    /// 客户通过调用该接口上传需催收文档，格式需为excel格式。接口返回任务ID。
    @inlinable
    public func uploadFile(_ input: UploadFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadFileResponse {
        try await self.client.execute(action: "UploadFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上传数据文件
    ///
    /// 客户通过调用该接口上传需催收文档，格式需为excel格式。接口返回任务ID。
    @inlinable
    public func uploadFile(module: String = "Data", operation: String = "UploadFile", fileUrl: String, fileName: String, fileDate: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadFileResponse> {
        self.uploadFile(UploadFileRequest(module: module, operation: operation, fileUrl: fileUrl, fileName: fileName, fileDate: fileDate), region: region, logger: logger, on: eventLoop)
    }

    /// 上传数据文件
    ///
    /// 客户通过调用该接口上传需催收文档，格式需为excel格式。接口返回任务ID。
    @inlinable
    public func uploadFile(module: String = "Data", operation: String = "UploadFile", fileUrl: String, fileName: String, fileDate: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadFileResponse {
        try await self.uploadFile(UploadFileRequest(module: module, operation: operation, fileUrl: fileUrl, fileName: fileName, fileDate: fileDate), region: region, logger: logger, on: eventLoop)
    }
}
