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

extension Antiddos {
    /// DeleteCcGeoIPBlockConfig请求参数结构体
    public struct DeleteCcGeoIPBlockConfigRequest: TCRequestModel {
        /// 资源实例ID
        public let instanceId: String

        /// CC区域封禁配置，填写参数时配置ID不能为空
        public let ccGeoIPBlockConfig: CcGeoIPBlockConfig

        public init(instanceId: String, ccGeoIPBlockConfig: CcGeoIPBlockConfig) {
            self.instanceId = instanceId
            self.ccGeoIPBlockConfig = ccGeoIPBlockConfig
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case ccGeoIPBlockConfig = "CcGeoIPBlockConfig"
        }
    }

    /// DeleteCcGeoIPBlockConfig返回参数结构体
    public struct DeleteCcGeoIPBlockConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除CC防护的区域封禁配置
    @inlinable @discardableResult
    public func deleteCcGeoIPBlockConfig(_ input: DeleteCcGeoIPBlockConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCcGeoIPBlockConfigResponse> {
        self.client.execute(action: "DeleteCcGeoIPBlockConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除CC防护的区域封禁配置
    @inlinable @discardableResult
    public func deleteCcGeoIPBlockConfig(_ input: DeleteCcGeoIPBlockConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCcGeoIPBlockConfigResponse {
        try await self.client.execute(action: "DeleteCcGeoIPBlockConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除CC防护的区域封禁配置
    @inlinable @discardableResult
    public func deleteCcGeoIPBlockConfig(instanceId: String, ccGeoIPBlockConfig: CcGeoIPBlockConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCcGeoIPBlockConfigResponse> {
        self.deleteCcGeoIPBlockConfig(.init(instanceId: instanceId, ccGeoIPBlockConfig: ccGeoIPBlockConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 删除CC防护的区域封禁配置
    @inlinable @discardableResult
    public func deleteCcGeoIPBlockConfig(instanceId: String, ccGeoIPBlockConfig: CcGeoIPBlockConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCcGeoIPBlockConfigResponse {
        try await self.deleteCcGeoIPBlockConfig(.init(instanceId: instanceId, ccGeoIPBlockConfig: ccGeoIPBlockConfig), region: region, logger: logger, on: eventLoop)
    }
}
