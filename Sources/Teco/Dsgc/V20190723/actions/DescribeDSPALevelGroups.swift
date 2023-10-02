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
    /// DescribeDSPALevelGroups请求参数结构体
    public struct DescribeDSPALevelGroupsRequest: TCRequest {
        /// DSPA实例ID
        public let dspaId: String

        /// 分级组名称
        public let name: String?

        public init(dspaId: String, name: String? = nil) {
            self.dspaId = dspaId
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case name = "Name"
        }
    }

    /// DescribeDSPALevelGroups返回参数结构体
    public struct DescribeDSPALevelGroupsResponse: TCResponse {
        /// 符合条件的敏感数据分级标识记录
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [DspaDiscoveryLevelDetail]?

        /// 符合条件的敏感数据分级标识记录数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取分级列表
    ///
    /// 获取分级列表，限制100个 不分页返回
    @inlinable
    public func describeDSPALevelGroups(_ input: DescribeDSPALevelGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPALevelGroupsResponse> {
        self.client.execute(action: "DescribeDSPALevelGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取分级列表
    ///
    /// 获取分级列表，限制100个 不分页返回
    @inlinable
    public func describeDSPALevelGroups(_ input: DescribeDSPALevelGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPALevelGroupsResponse {
        try await self.client.execute(action: "DescribeDSPALevelGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取分级列表
    ///
    /// 获取分级列表，限制100个 不分页返回
    @inlinable
    public func describeDSPALevelGroups(dspaId: String, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPALevelGroupsResponse> {
        self.describeDSPALevelGroups(.init(dspaId: dspaId, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 获取分级列表
    ///
    /// 获取分级列表，限制100个 不分页返回
    @inlinable
    public func describeDSPALevelGroups(dspaId: String, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPALevelGroupsResponse {
        try await self.describeDSPALevelGroups(.init(dspaId: dspaId, name: name), region: region, logger: logger, on: eventLoop)
    }
}