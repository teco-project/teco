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
    /// CreateCustomImage请求参数结构体
    public struct CreateCustomImageRequest: TCRequestModel {
        /// 用于制作镜像的物理机ID
        public let instanceId: String

        /// 镜像别名
        public let imageName: String

        /// 镜像描述
        public let imageDescription: String?

        public init(instanceId: String, imageName: String, imageDescription: String? = nil) {
            self.instanceId = instanceId
            self.imageName = imageName
            self.imageDescription = imageDescription
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case imageName = "ImageName"
            case imageDescription = "ImageDescription"
        }
    }

    /// CreateCustomImage返回参数结构体
    public struct CreateCustomImageResponse: TCResponseModel {
        /// 黑石异步任务ID
        public let taskId: UInt64

        /// 镜像ID
        public let imageId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case imageId = "ImageId"
            case requestId = "RequestId"
        }
    }

    /// 创建自定义镜像
    ///
    /// 创建自定义镜像<br>
    /// 每个AppId在每个可用区最多保留20个自定义镜像
    @inlinable
    public func createCustomImage(_ input: CreateCustomImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomImageResponse> {
        self.client.execute(action: "CreateCustomImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建自定义镜像
    ///
    /// 创建自定义镜像<br>
    /// 每个AppId在每个可用区最多保留20个自定义镜像
    @inlinable
    public func createCustomImage(_ input: CreateCustomImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomImageResponse {
        try await self.client.execute(action: "CreateCustomImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建自定义镜像
    ///
    /// 创建自定义镜像<br>
    /// 每个AppId在每个可用区最多保留20个自定义镜像
    @inlinable
    public func createCustomImage(instanceId: String, imageName: String, imageDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomImageResponse> {
        self.createCustomImage(.init(instanceId: instanceId, imageName: imageName, imageDescription: imageDescription), region: region, logger: logger, on: eventLoop)
    }

    /// 创建自定义镜像
    ///
    /// 创建自定义镜像<br>
    /// 每个AppId在每个可用区最多保留20个自定义镜像
    @inlinable
    public func createCustomImage(instanceId: String, imageName: String, imageDescription: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCustomImageResponse {
        try await self.createCustomImage(.init(instanceId: instanceId, imageName: imageName, imageDescription: imageDescription), region: region, logger: logger, on: eventLoop)
    }
}
