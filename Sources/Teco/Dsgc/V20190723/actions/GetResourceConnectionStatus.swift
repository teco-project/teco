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

extension Dsgc {
    /// GetResourceConnectionStatus请求参数结构体
    public struct GetResourceConnectionStatusRequest: TCRequest {
        /// DSPA实例ID。
        public let dspaId: String

        /// 资源类型。
        public let metaType: String

        /// 资源所处地域。
        public let resourceRegion: String

        /// 资源列表中展示的资源ID。
        public let resourceId: String

        public init(dspaId: String, metaType: String, resourceRegion: String, resourceId: String) {
            self.dspaId = dspaId
            self.metaType = metaType
            self.resourceRegion = resourceRegion
            self.resourceId = resourceId
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case metaType = "MetaType"
            case resourceRegion = "ResourceRegion"
            case resourceId = "ResourceId"
        }
    }

    /// GetResourceConnectionStatus返回参数结构体
    public struct GetResourceConnectionStatusResponse: TCResponse {
        /// 连接状态，success -- 连接成功，failed -- 连接失败
        public let connectionStatus: String

        /// 连接状态的描述信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let connectionDesc: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case connectionStatus = "ConnectionStatus"
            case connectionDesc = "ConnectionDesc"
            case requestId = "RequestId"
        }
    }

    /// 获取授权资源的连接状态
    @inlinable
    public func getResourceConnectionStatus(_ input: GetResourceConnectionStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourceConnectionStatusResponse> {
        self.client.execute(action: "GetResourceConnectionStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取授权资源的连接状态
    @inlinable
    public func getResourceConnectionStatus(_ input: GetResourceConnectionStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourceConnectionStatusResponse {
        try await self.client.execute(action: "GetResourceConnectionStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取授权资源的连接状态
    @inlinable
    public func getResourceConnectionStatus(dspaId: String, metaType: String, resourceRegion: String, resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourceConnectionStatusResponse> {
        self.getResourceConnectionStatus(.init(dspaId: dspaId, metaType: metaType, resourceRegion: resourceRegion, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取授权资源的连接状态
    @inlinable
    public func getResourceConnectionStatus(dspaId: String, metaType: String, resourceRegion: String, resourceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourceConnectionStatusResponse {
        try await self.getResourceConnectionStatus(.init(dspaId: dspaId, metaType: metaType, resourceRegion: resourceRegion, resourceId: resourceId), region: region, logger: logger, on: eventLoop)
    }
}
