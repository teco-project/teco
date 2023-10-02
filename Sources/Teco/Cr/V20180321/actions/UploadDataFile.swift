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

import struct Foundation.Data
import Logging
import NIOCore
import TecoCore

extension Cr {
    /// UploadDataFile请求参数结构体
    public struct UploadDataFileRequest: TCMultipartRequest {
        /// 模块名，本接口取值：Data
        public let module: String

        /// 操作名，本接口取值：Upload
        public let operation: String

        /// 文件名
        public let fileName: String

        /// 上传类型，不填默认到期/逾期提醒文件，取值范围：
        ///
        /// - data：到期/逾期提醒文件
        /// - repay：到期/逾期提醒停拨文件
        /// - callback：回访文件
        /// - callstop：回访停拨文件
        /// - blacklist：黑名单文件
        public let uploadModel: String?

        /// 文件，文件与文件地址上传只可选用一种，必须使用multipart/form-data协议来上传二进制流文件，建议使用xlsx格式，大小不超过5MB。
        public let file: Data?

        /// 文件上传地址，文件与文件地址上传只可选用一种，大小不超过50MB。
        public let fileUrl: String?

        /// 实例ID，不传默认为系统分配的初始实例。
        public let instId: String?

        public init(module: String, operation: String, fileName: String, uploadModel: String? = nil, file: Data? = nil, fileUrl: String? = nil, instId: String? = nil) {
            self.module = module
            self.operation = operation
            self.fileName = fileName
            self.uploadModel = uploadModel
            self.file = file
            self.fileUrl = fileUrl
            self.instId = instId
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case fileName = "FileName"
            case uploadModel = "UploadModel"
            case file = "File"
            case fileUrl = "FileUrl"
            case instId = "InstId"
        }
    }

    /// UploadDataFile返回参数结构体
    public struct UploadDataFileResponse: TCResponse {
        /// 数据ID
        public let dataResId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataResId = "DataResId"
            case requestId = "RequestId"
        }
    }

    /// 上传文件
    ///
    /// 上传文件，接口返回数据任务ID，支持xlsx、xls、csv、zip格式。
    @inlinable
    public func uploadDataFile(_ input: UploadDataFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadDataFileResponse> {
        self.client.execute(action: "UploadDataFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上传文件
    ///
    /// 上传文件，接口返回数据任务ID，支持xlsx、xls、csv、zip格式。
    @inlinable
    public func uploadDataFile(_ input: UploadDataFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadDataFileResponse {
        try await self.client.execute(action: "UploadDataFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上传文件
    ///
    /// 上传文件，接口返回数据任务ID，支持xlsx、xls、csv、zip格式。
    @inlinable
    public func uploadDataFile(module: String, operation: String, fileName: String, uploadModel: String? = nil, file: Data? = nil, fileUrl: String? = nil, instId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadDataFileResponse> {
        self.uploadDataFile(.init(module: module, operation: operation, fileName: fileName, uploadModel: uploadModel, file: file, fileUrl: fileUrl, instId: instId), region: region, logger: logger, on: eventLoop)
    }

    /// 上传文件
    ///
    /// 上传文件，接口返回数据任务ID，支持xlsx、xls、csv、zip格式。
    @inlinable
    public func uploadDataFile(module: String, operation: String, fileName: String, uploadModel: String? = nil, file: Data? = nil, fileUrl: String? = nil, instId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadDataFileResponse {
        try await self.uploadDataFile(.init(module: module, operation: operation, fileName: fileName, uploadModel: uploadModel, file: file, fileUrl: fileUrl, instId: instId), region: region, logger: logger, on: eventLoop)
    }
}
