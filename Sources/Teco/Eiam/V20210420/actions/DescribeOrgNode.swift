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

extension Eiam {
    /// DescribeOrgNode请求参数结构体
    public struct DescribeOrgNodeRequest: TCRequest {
        /// 机构节点ID，是机构节点全局唯一标识，长度限制：64个字符。如果为空默认读取机构根节点信息。
        public let orgNodeId: String?

        /// 是否读取其子节点信息。当其为空或false时，默认仅读取当前机构节点信息。当其为true时，读取本机构节点以及其第一层子节点信息。
        public let includeOrgNodeChildInfo: Bool?

        public init(orgNodeId: String? = nil, includeOrgNodeChildInfo: Bool? = nil) {
            self.orgNodeId = orgNodeId
            self.includeOrgNodeChildInfo = includeOrgNodeChildInfo
        }

        enum CodingKeys: String, CodingKey {
            case orgNodeId = "OrgNodeId"
            case includeOrgNodeChildInfo = "IncludeOrgNodeChildInfo"
        }
    }

    /// DescribeOrgNode返回参数结构体
    public struct DescribeOrgNodeResponse: TCResponse {
        /// 机构节点展示名称，长度限制：64个字符。 默认与机构名相同。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let displayName: String?

        /// 机构节点最后修改时间，符合 ISO8601 标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastModifiedDate: String?

        /// 机构节点外部ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customizedOrgNodeId: String?

        /// 当前机构节点的父节点ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let parentOrgNodeId: String?

        /// 机构节点ID，是机构节点的全局唯一标识。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgNodeId: String?

        /// 数据来源。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataSource: String?

        /// 机构节点创建时间，符合 ISO8601 标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createdDate: String?

        /// 当前机构节点下的子节点列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgNodeChildInfo: [OrgNodeChildInfo]?

        /// 机构节点描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case displayName = "DisplayName"
            case lastModifiedDate = "LastModifiedDate"
            case customizedOrgNodeId = "CustomizedOrgNodeId"
            case parentOrgNodeId = "ParentOrgNodeId"
            case orgNodeId = "OrgNodeId"
            case dataSource = "DataSource"
            case createdDate = "CreatedDate"
            case orgNodeChildInfo = "OrgNodeChildInfo"
            case description = "Description"
            case requestId = "RequestId"
        }
    }

    /// 读取机构节点信息
    ///
    /// 根据机构节点ID读取机构节点信息
    @inlinable
    public func describeOrgNode(_ input: DescribeOrgNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrgNodeResponse> {
        self.client.execute(action: "DescribeOrgNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 读取机构节点信息
    ///
    /// 根据机构节点ID读取机构节点信息
    @inlinable
    public func describeOrgNode(_ input: DescribeOrgNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrgNodeResponse {
        try await self.client.execute(action: "DescribeOrgNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 读取机构节点信息
    ///
    /// 根据机构节点ID读取机构节点信息
    @inlinable
    public func describeOrgNode(orgNodeId: String? = nil, includeOrgNodeChildInfo: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrgNodeResponse> {
        self.describeOrgNode(.init(orgNodeId: orgNodeId, includeOrgNodeChildInfo: includeOrgNodeChildInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 读取机构节点信息
    ///
    /// 根据机构节点ID读取机构节点信息
    @inlinable
    public func describeOrgNode(orgNodeId: String? = nil, includeOrgNodeChildInfo: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrgNodeResponse {
        try await self.describeOrgNode(.init(orgNodeId: orgNodeId, includeOrgNodeChildInfo: includeOrgNodeChildInfo), region: region, logger: logger, on: eventLoop)
    }
}
