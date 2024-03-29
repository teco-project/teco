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
    /// DisableDSPAMetaResourceAuth请求参数结构体
    public struct DisableDSPAMetaResourceAuthRequest: TCRequest {
        /// DSPA实例ID。
        public let dspaId: String

        /// 资源类型。
        public let metaType: String

        /// 资源所处地域。
        public let resourceRegion: String

        /// 用户云资源ID列表。
        public let resourceIDs: [String]

        public init(dspaId: String, metaType: String, resourceRegion: String, resourceIDs: [String]) {
            self.dspaId = dspaId
            self.metaType = metaType
            self.resourceRegion = resourceRegion
            self.resourceIDs = resourceIDs
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case metaType = "MetaType"
            case resourceRegion = "ResourceRegion"
            case resourceIDs = "ResourceIDs"
        }
    }

    /// DisableDSPAMetaResourceAuth返回参数结构体
    public struct DisableDSPAMetaResourceAuthResponse: TCResponse {
        /// DSPA实例ID。
        public let dspaId: String

        /// 授权结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let results: [DspaTaskResult]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case results = "Results"
            case requestId = "RequestId"
        }
    }

    /// 取消用户云资源授权
    @inlinable
    public func disableDSPAMetaResourceAuth(_ input: DisableDSPAMetaResourceAuthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableDSPAMetaResourceAuthResponse> {
        self.client.execute(action: "DisableDSPAMetaResourceAuth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消用户云资源授权
    @inlinable
    public func disableDSPAMetaResourceAuth(_ input: DisableDSPAMetaResourceAuthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableDSPAMetaResourceAuthResponse {
        try await self.client.execute(action: "DisableDSPAMetaResourceAuth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消用户云资源授权
    @inlinable
    public func disableDSPAMetaResourceAuth(dspaId: String, metaType: String, resourceRegion: String, resourceIDs: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableDSPAMetaResourceAuthResponse> {
        self.disableDSPAMetaResourceAuth(.init(dspaId: dspaId, metaType: metaType, resourceRegion: resourceRegion, resourceIDs: resourceIDs), region: region, logger: logger, on: eventLoop)
    }

    /// 取消用户云资源授权
    @inlinable
    public func disableDSPAMetaResourceAuth(dspaId: String, metaType: String, resourceRegion: String, resourceIDs: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableDSPAMetaResourceAuthResponse {
        try await self.disableDSPAMetaResourceAuth(.init(dspaId: dspaId, metaType: metaType, resourceRegion: resourceRegion, resourceIDs: resourceIDs), region: region, logger: logger, on: eventLoop)
    }
}
