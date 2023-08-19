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

extension Iotvideo {
    /// CreateTaskFileUrl请求参数结构体
    public struct CreateTaskFileUrlRequest: TCRequest {
        /// 产品ID
        public let productId: String

        public init(productId: String) {
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
        }
    }

    /// CreateTaskFileUrl返回参数结构体
    public struct CreateTaskFileUrlResponse: TCResponse {
        /// 任务文件上传链接
        public let url: String

        /// 任务文件名
        public let fileName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case fileName = "FileName"
            case requestId = "RequestId"
        }
    }

    /// 获取任务文件上传链接
    ///
    /// 本接口（CreateTaskFileUrl）用于获取产品级任务文件上传链接
    @inlinable
    public func createTaskFileUrl(_ input: CreateTaskFileUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskFileUrlResponse> {
        self.client.execute(action: "CreateTaskFileUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取任务文件上传链接
    ///
    /// 本接口（CreateTaskFileUrl）用于获取产品级任务文件上传链接
    @inlinable
    public func createTaskFileUrl(_ input: CreateTaskFileUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskFileUrlResponse {
        try await self.client.execute(action: "CreateTaskFileUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取任务文件上传链接
    ///
    /// 本接口（CreateTaskFileUrl）用于获取产品级任务文件上传链接
    @inlinable
    public func createTaskFileUrl(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTaskFileUrlResponse> {
        self.createTaskFileUrl(.init(productId: productId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取任务文件上传链接
    ///
    /// 本接口（CreateTaskFileUrl）用于获取产品级任务文件上传链接
    @inlinable
    public func createTaskFileUrl(productId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskFileUrlResponse {
        try await self.createTaskFileUrl(.init(productId: productId), region: region, logger: logger, on: eventLoop)
    }
}
