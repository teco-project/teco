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

import Logging
import NIOCore
import TecoCore

extension Iotcloud {
    /// CreateMultiDevicesTask请求参数结构体
    public struct CreateMultiDevicesTaskRequest: TCRequest {
        /// 产品ID
        public let productId: String

        /// 参数类型 cosfile-文件上传 random-随机创建
        public let parametersType: String

        /// 文件上传类型时文件名
        public let fileName: String?

        /// 文件上传类型时文件大小
        public let fileSize: UInt64?

        /// 随机创建时设备创建个数
        public let batchCount: UInt64?

        /// 文件上传类型时文件md5值
        public let hash: String?

        public init(productId: String, parametersType: String, fileName: String? = nil, fileSize: UInt64? = nil, batchCount: UInt64? = nil, hash: String? = nil) {
            self.productId = productId
            self.parametersType = parametersType
            self.fileName = fileName
            self.fileSize = fileSize
            self.batchCount = batchCount
            self.hash = hash
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case parametersType = "ParametersType"
            case fileName = "FileName"
            case fileSize = "FileSize"
            case batchCount = "BatchCount"
            case hash = "Hash"
        }
    }

    /// CreateMultiDevicesTask返回参数结构体
    public struct CreateMultiDevicesTaskResponse: TCResponse {
        /// 任务ID
        public let id: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case requestId = "RequestId"
        }
    }

    /// 创建批量创建设备任务
    ///
    /// 本接口（CreateMultiDevicesTask）用于创建产品级别的批量创建设备任务
    @inlinable
    public func createMultiDevicesTask(_ input: CreateMultiDevicesTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMultiDevicesTaskResponse> {
        self.client.execute(action: "CreateMultiDevicesTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建批量创建设备任务
    ///
    /// 本接口（CreateMultiDevicesTask）用于创建产品级别的批量创建设备任务
    @inlinable
    public func createMultiDevicesTask(_ input: CreateMultiDevicesTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMultiDevicesTaskResponse {
        try await self.client.execute(action: "CreateMultiDevicesTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建批量创建设备任务
    ///
    /// 本接口（CreateMultiDevicesTask）用于创建产品级别的批量创建设备任务
    @inlinable
    public func createMultiDevicesTask(productId: String, parametersType: String, fileName: String? = nil, fileSize: UInt64? = nil, batchCount: UInt64? = nil, hash: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMultiDevicesTaskResponse> {
        self.createMultiDevicesTask(.init(productId: productId, parametersType: parametersType, fileName: fileName, fileSize: fileSize, batchCount: batchCount, hash: hash), region: region, logger: logger, on: eventLoop)
    }

    /// 创建批量创建设备任务
    ///
    /// 本接口（CreateMultiDevicesTask）用于创建产品级别的批量创建设备任务
    @inlinable
    public func createMultiDevicesTask(productId: String, parametersType: String, fileName: String? = nil, fileSize: UInt64? = nil, batchCount: UInt64? = nil, hash: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMultiDevicesTaskResponse {
        try await self.createMultiDevicesTask(.init(productId: productId, parametersType: parametersType, fileName: fileName, fileSize: fileSize, batchCount: batchCount, hash: hash), region: region, logger: logger, on: eventLoop)
    }
}
