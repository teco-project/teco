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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cdwch {
    /// DescribeSpec请求参数结构体
    public struct DescribeSpecRequest: TCRequestModel {
        /// 地域信息，例如"ap-guangzhou-1"
        public let zone: String

        /// 计费类型，PREPAID 包年包月，POSTPAID_BY_HOUR 按量计费
        public let payMode: String?

        /// 是否弹性ck
        public let isElastic: Bool?

        public init(zone: String, payMode: String? = nil, isElastic: Bool? = nil) {
            self.zone = zone
            self.payMode = payMode
            self.isElastic = isElastic
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case payMode = "PayMode"
            case isElastic = "IsElastic"
        }
    }

    /// DescribeSpec返回参数结构体
    public struct DescribeSpecResponse: TCResponseModel {
        /// zookeeper节点规格描述
        public let commonSpec: [ResourceSpec]

        /// 数据节点规格描述
        public let dataSpec: [ResourceSpec]

        /// 云盘列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let attachCBSSpec: [DiskSpec]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case commonSpec = "CommonSpec"
            case dataSpec = "DataSpec"
            case attachCBSSpec = "AttachCBSSpec"
            case requestId = "RequestId"
        }
    }

    /// 获取集群规格
    ///
    /// 购买页拉取集群的数据节点和zookeeper节点的规格列表
    @inlinable
    public func describeSpec(_ input: DescribeSpecRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSpecResponse> {
        self.client.execute(action: "DescribeSpec", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取集群规格
    ///
    /// 购买页拉取集群的数据节点和zookeeper节点的规格列表
    @inlinable
    public func describeSpec(_ input: DescribeSpecRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSpecResponse {
        try await self.client.execute(action: "DescribeSpec", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取集群规格
    ///
    /// 购买页拉取集群的数据节点和zookeeper节点的规格列表
    @inlinable
    public func describeSpec(zone: String, payMode: String? = nil, isElastic: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSpecResponse> {
        self.describeSpec(.init(zone: zone, payMode: payMode, isElastic: isElastic), region: region, logger: logger, on: eventLoop)
    }

    /// 获取集群规格
    ///
    /// 购买页拉取集群的数据节点和zookeeper节点的规格列表
    @inlinable
    public func describeSpec(zone: String, payMode: String? = nil, isElastic: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSpecResponse {
        try await self.describeSpec(.init(zone: zone, payMode: payMode, isElastic: isElastic), region: region, logger: logger, on: eventLoop)
    }
}
