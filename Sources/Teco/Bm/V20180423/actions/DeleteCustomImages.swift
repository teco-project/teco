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

extension Bm {
    /// DeleteCustomImages请求参数结构体
    public struct DeleteCustomImagesRequest: TCRequest {
        /// 准备删除的镜像ID列表
        public let imageIds: [String]

        public init(imageIds: [String]) {
            self.imageIds = imageIds
        }

        enum CodingKeys: String, CodingKey {
            case imageIds = "ImageIds"
        }
    }

    /// DeleteCustomImages返回参数结构体
    public struct DeleteCustomImagesResponse: TCResponse {
        /// 黑石异步任务ID
        public let taskId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 删除自定义镜像
    ///
    /// 删除自定义镜像
    ///
    /// 正用于部署或重装中的镜像被删除后，镜像文件将保留一段时间，直到部署或重装结束
    @inlinable
    public func deleteCustomImages(_ input: DeleteCustomImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCustomImagesResponse> {
        self.client.execute(action: "DeleteCustomImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除自定义镜像
    ///
    /// 删除自定义镜像
    ///
    /// 正用于部署或重装中的镜像被删除后，镜像文件将保留一段时间，直到部署或重装结束
    @inlinable
    public func deleteCustomImages(_ input: DeleteCustomImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomImagesResponse {
        try await self.client.execute(action: "DeleteCustomImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除自定义镜像
    ///
    /// 删除自定义镜像
    ///
    /// 正用于部署或重装中的镜像被删除后，镜像文件将保留一段时间，直到部署或重装结束
    @inlinable
    public func deleteCustomImages(imageIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCustomImagesResponse> {
        self.deleteCustomImages(.init(imageIds: imageIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除自定义镜像
    ///
    /// 删除自定义镜像
    ///
    /// 正用于部署或重装中的镜像被删除后，镜像文件将保留一段时间，直到部署或重装结束
    @inlinable
    public func deleteCustomImages(imageIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCustomImagesResponse {
        try await self.deleteCustomImages(.init(imageIds: imageIds), region: region, logger: logger, on: eventLoop)
    }
}
