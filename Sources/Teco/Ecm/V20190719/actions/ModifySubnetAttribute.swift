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

extension Ecm {
    /// ModifySubnetAttribute请求参数结构体
    public struct ModifySubnetAttributeRequest: TCRequest {
        /// 子网实例ID。形如：subnet-pxir56ns。
        public let subnetId: String

        /// ECM 地域
        public let ecmRegion: String

        /// 子网名称，最大长度不能超过60个字节。
        public let subnetName: String?

        /// 子网是否开启广播。
        public let enableBroadcast: String?

        /// 子网的标签键值
        public let tags: [Tag]?

        public init(subnetId: String, ecmRegion: String, subnetName: String? = nil, enableBroadcast: String? = nil, tags: [Tag]? = nil) {
            self.subnetId = subnetId
            self.ecmRegion = ecmRegion
            self.subnetName = subnetName
            self.enableBroadcast = enableBroadcast
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case subnetId = "SubnetId"
            case ecmRegion = "EcmRegion"
            case subnetName = "SubnetName"
            case enableBroadcast = "EnableBroadcast"
            case tags = "Tags"
        }
    }

    /// ModifySubnetAttribute返回参数结构体
    public struct ModifySubnetAttributeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改子网属性
    @inlinable @discardableResult
    public func modifySubnetAttribute(_ input: ModifySubnetAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubnetAttributeResponse> {
        self.client.execute(action: "ModifySubnetAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改子网属性
    @inlinable @discardableResult
    public func modifySubnetAttribute(_ input: ModifySubnetAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubnetAttributeResponse {
        try await self.client.execute(action: "ModifySubnetAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改子网属性
    @inlinable @discardableResult
    public func modifySubnetAttribute(subnetId: String, ecmRegion: String, subnetName: String? = nil, enableBroadcast: String? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubnetAttributeResponse> {
        self.modifySubnetAttribute(.init(subnetId: subnetId, ecmRegion: ecmRegion, subnetName: subnetName, enableBroadcast: enableBroadcast, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 修改子网属性
    @inlinable @discardableResult
    public func modifySubnetAttribute(subnetId: String, ecmRegion: String, subnetName: String? = nil, enableBroadcast: String? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubnetAttributeResponse {
        try await self.modifySubnetAttribute(.init(subnetId: subnetId, ecmRegion: ecmRegion, subnetName: subnetName, enableBroadcast: enableBroadcast, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
