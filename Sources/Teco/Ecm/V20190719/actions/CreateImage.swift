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

extension Ecm {
    /// CreateImage请求参数结构体
    public struct CreateImageRequest: TCRequestModel {
        /// 镜像名称。
        public let imageName: String

        /// 需要制作镜像的实例ID。
        public let instanceId: String

        /// 镜像描述。
        public let imageDescription: String?

        /// 是否执行强制关机以制作镜像。取值范围：
        /// TRUE：表示自动关机后制作镜像
        /// FALSE：表示开机状态制作，目前不支持，需要先手动关机
        /// 默认取值：FALSE。
        public let forcePoweroff: String?

        public init(imageName: String, instanceId: String, imageDescription: String? = nil, forcePoweroff: String? = nil) {
            self.imageName = imageName
            self.instanceId = instanceId
            self.imageDescription = imageDescription
            self.forcePoweroff = forcePoweroff
        }

        enum CodingKeys: String, CodingKey {
            case imageName = "ImageName"
            case instanceId = "InstanceId"
            case imageDescription = "ImageDescription"
            case forcePoweroff = "ForcePoweroff"
        }
    }

    /// CreateImage返回参数结构体
    public struct CreateImageResponse: TCResponseModel {
        /// 任务id
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建镜像
    ///
    /// 本接口(CreateImage)用于将实例的系统盘制作为新镜像，创建后的镜像可以用于创建实例。
    @inlinable
    public func createImage(_ input: CreateImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateImageResponse> {
        self.client.execute(action: "CreateImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建镜像
    ///
    /// 本接口(CreateImage)用于将实例的系统盘制作为新镜像，创建后的镜像可以用于创建实例。
    @inlinable
    public func createImage(_ input: CreateImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateImageResponse {
        try await self.client.execute(action: "CreateImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建镜像
    ///
    /// 本接口(CreateImage)用于将实例的系统盘制作为新镜像，创建后的镜像可以用于创建实例。
    @inlinable
    public func createImage(imageName: String, instanceId: String, imageDescription: String? = nil, forcePoweroff: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateImageResponse> {
        let input = CreateImageRequest(imageName: imageName, instanceId: instanceId, imageDescription: imageDescription, forcePoweroff: forcePoweroff)
        return self.client.execute(action: "CreateImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建镜像
    ///
    /// 本接口(CreateImage)用于将实例的系统盘制作为新镜像，创建后的镜像可以用于创建实例。
    @inlinable
    public func createImage(imageName: String, instanceId: String, imageDescription: String? = nil, forcePoweroff: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateImageResponse {
        let input = CreateImageRequest(imageName: imageName, instanceId: instanceId, imageDescription: imageDescription, forcePoweroff: forcePoweroff)
        return try await self.client.execute(action: "CreateImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
