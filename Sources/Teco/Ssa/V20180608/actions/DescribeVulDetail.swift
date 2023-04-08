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

import TecoCore

extension Ssa {
    /// DescribeVulDetail请求参数结构体
    public struct DescribeVulDetailRequest: TCRequestModel {
        /// 漏洞唯一标识符
        public let uniqId: String

        /// 查看详情来源
        public let source: String?

        public init(uniqId: String, source: String? = nil) {
            self.uniqId = uniqId
            self.source = source
        }

        enum CodingKeys: String, CodingKey {
            case uniqId = "UniqId"
            case source = "Source"
        }
    }

    /// DescribeVulDetail返回参数结构体
    public struct DescribeVulDetailResponse: TCResponseModel {
        /// 漏洞类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulType: Int64?

        /// 漏洞子类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subVulType: String?

        /// cvss分数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cvssScore: String?

        /// cvss值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cvss: String?

        /// cve编号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cve: String?

        /// cnvd编号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cnvd: String?

        /// cnnvd编号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cnnvd: String?

        /// 描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let desc: String?

        /// 参考
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reference: String?

        /// 修复意见
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let repair: String?

        /// 披露时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let releaseTime: String?

        /// 更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?

        /// 漏洞名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 等级
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let level: Int64?

        /// 状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?

        /// 受影响资产唯一标识
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let impactAsset: String?

        /// 受影响资产名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let impactAssetName: String?

        /// 受影响资产是否已删除
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isAssetDeleted: Bool?

        /// 漏洞来源
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let source: String?

        /// 漏洞URL
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulUrl: String?

        /// 资产归属
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ssaAssetCategory: Int64?

        /// 资产文件路径
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulPath: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vulType = "VulType"
            case subVulType = "SubVulType"
            case cvssScore = "CvssScore"
            case cvss = "Cvss"
            case cve = "Cve"
            case cnvd = "Cnvd"
            case cnnvd = "Cnnvd"
            case desc = "Desc"
            case reference = "Reference"
            case repair = "Repair"
            case releaseTime = "ReleaseTime"
            case updateTime = "UpdateTime"
            case name = "Name"
            case level = "Level"
            case status = "Status"
            case impactAsset = "ImpactAsset"
            case impactAssetName = "ImpactAssetName"
            case isAssetDeleted = "IsAssetDeleted"
            case source = "Source"
            case vulUrl = "VulUrl"
            case ssaAssetCategory = "SsaAssetCategory"
            case vulPath = "VulPath"
            case requestId = "RequestId"
        }
    }

    /// 漏洞列表-漏洞详情
    ///
    /// 漏洞列表页，获取漏洞详情信息
    @inlinable
    public func describeVulDetail(_ input: DescribeVulDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulDetailResponse> {
        self.client.execute(action: "DescribeVulDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 漏洞列表-漏洞详情
    ///
    /// 漏洞列表页，获取漏洞详情信息
    @inlinable
    public func describeVulDetail(_ input: DescribeVulDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulDetailResponse {
        try await self.client.execute(action: "DescribeVulDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 漏洞列表-漏洞详情
    ///
    /// 漏洞列表页，获取漏洞详情信息
    @inlinable
    public func describeVulDetail(uniqId: String, source: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulDetailResponse> {
        self.describeVulDetail(.init(uniqId: uniqId, source: source), region: region, logger: logger, on: eventLoop)
    }

    /// 漏洞列表-漏洞详情
    ///
    /// 漏洞列表页，获取漏洞详情信息
    @inlinable
    public func describeVulDetail(uniqId: String, source: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulDetailResponse {
        try await self.describeVulDetail(.init(uniqId: uniqId, source: source), region: region, logger: logger, on: eventLoop)
    }
}
