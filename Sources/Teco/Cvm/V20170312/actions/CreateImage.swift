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

extension Cvm {
    /// CreateImage请求参数结构体
    public struct CreateImageRequest: TCRequest {
        /// 镜像名称
        public let imageName: String

        /// 需要制作镜像的实例ID。基于实例创建镜像时，为必填参数。
        public let instanceId: String?

        /// 镜像描述
        public let imageDescription: String?

        /// 是否执行强制关机以制作镜像。
        /// 取值范围：
        ///
        /// - TRUE：表示关机之后制作镜像
        /// - FALSE：表示开机状态制作镜像
        ///
        /// 默认取值：FALSE。
        ///
        /// 开机状态制作镜像，可能导致部分数据未备份，影响数据安全。
        public let forcePoweroff: String?

        /// 创建Windows镜像时是否启用Sysprep。
        /// 取值范围：TRUE或FALSE，默认取值为FALSE。
        ///
        /// 关于Sysprep的详情请参考[链接](https://cloud.tencent.com/document/product/213/43498)。
        public let sysprep: String?

        /// 基于实例创建整机镜像时，指定包含在镜像里的数据盘ID
        public let dataDiskIds: [String]?

        /// 基于快照创建镜像，指定快照ID，必须包含一个系统盘快照。不可与InstanceId同时传入。
        public let snapshotIds: [String]?

        /// 检测本次请求的是否成功，但不会对操作的资源产生任何影响
        public let dryRun: Bool?

        /// 标签描述列表。通过指定该参数可以同时绑定标签到自定义镜像。
        public let tagSpecification: [TagSpecification]?

        public init(imageName: String, instanceId: String? = nil, imageDescription: String? = nil, forcePoweroff: String? = nil, sysprep: String? = nil, dataDiskIds: [String]? = nil, snapshotIds: [String]? = nil, dryRun: Bool? = nil, tagSpecification: [TagSpecification]? = nil) {
            self.imageName = imageName
            self.instanceId = instanceId
            self.imageDescription = imageDescription
            self.forcePoweroff = forcePoweroff
            self.sysprep = sysprep
            self.dataDiskIds = dataDiskIds
            self.snapshotIds = snapshotIds
            self.dryRun = dryRun
            self.tagSpecification = tagSpecification
        }

        enum CodingKeys: String, CodingKey {
            case imageName = "ImageName"
            case instanceId = "InstanceId"
            case imageDescription = "ImageDescription"
            case forcePoweroff = "ForcePoweroff"
            case sysprep = "Sysprep"
            case dataDiskIds = "DataDiskIds"
            case snapshotIds = "SnapshotIds"
            case dryRun = "DryRun"
            case tagSpecification = "TagSpecification"
        }
    }

    /// CreateImage返回参数结构体
    public struct CreateImageResponse: TCResponse {
        /// 镜像ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageId = "ImageId"
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
    public func createImage(imageName: String, instanceId: String? = nil, imageDescription: String? = nil, forcePoweroff: String? = nil, sysprep: String? = nil, dataDiskIds: [String]? = nil, snapshotIds: [String]? = nil, dryRun: Bool? = nil, tagSpecification: [TagSpecification]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateImageResponse> {
        self.createImage(.init(imageName: imageName, instanceId: instanceId, imageDescription: imageDescription, forcePoweroff: forcePoweroff, sysprep: sysprep, dataDiskIds: dataDiskIds, snapshotIds: snapshotIds, dryRun: dryRun, tagSpecification: tagSpecification), region: region, logger: logger, on: eventLoop)
    }

    /// 创建镜像
    ///
    /// 本接口(CreateImage)用于将实例的系统盘制作为新镜像，创建后的镜像可以用于创建实例。
    @inlinable
    public func createImage(imageName: String, instanceId: String? = nil, imageDescription: String? = nil, forcePoweroff: String? = nil, sysprep: String? = nil, dataDiskIds: [String]? = nil, snapshotIds: [String]? = nil, dryRun: Bool? = nil, tagSpecification: [TagSpecification]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateImageResponse {
        try await self.createImage(.init(imageName: imageName, instanceId: instanceId, imageDescription: imageDescription, forcePoweroff: forcePoweroff, sysprep: sysprep, dataDiskIds: dataDiskIds, snapshotIds: snapshotIds, dryRun: dryRun, tagSpecification: tagSpecification), region: region, logger: logger, on: eventLoop)
    }
}
