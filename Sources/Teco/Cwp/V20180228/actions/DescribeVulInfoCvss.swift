//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cwp {
    /// DescribeVulInfoCvss请求参数结构体
    public struct DescribeVulInfoCvssRequest: TCRequestModel {
        /// 漏洞id
        public let vulId: UInt64

        public init(vulId: UInt64) {
            self.vulId = vulId
        }

        enum CodingKeys: String, CodingKey {
            case vulId = "VulId"
        }
    }

    /// DescribeVulInfoCvss返回参数结构体
    public struct DescribeVulInfoCvssResponse: TCResponseModel {
        /// 漏洞id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulId: UInt64?

        /// 漏洞名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulName: String?

        /// 危害等级：1-低危；2-中危；3-高危；4-严重
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulLevel: UInt64?

        /// 漏洞分类 1: web-cms漏洞 2:应用漏洞  4: Linux软件漏洞 5: Windows系统漏洞
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulType: UInt64?

        /// 漏洞描述信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 修复方案
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let repairPlan: String?

        /// 漏洞CVEID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cveId: String?

        /// 参考链接
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reference: String?

        /// CVSS信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cvss: String?

        /// 发布时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publicDate: String?

        /// Cvss分数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cvssScore: UInt64?

        /// cvss详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cveInfo: String?

        /// cvss 分数 浮点型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cvssScoreFloat: Float?

        /// 漏洞标签 多个逗号分割
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let labels: String?

        /// 已防御的攻击次数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let defenseAttackCount: UInt64?

        /// 全网修复成功次数, 不支持自动修复的漏洞默认返回0
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let successFixCount: UInt64?

        /// 修复是否支持：0-windows/linux均不支持修复 ;1-windows/linux 均支持修复 ;2-仅linux支持修复;3-仅windows支持修复
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fixSwitch: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case vulId = "VulId"
            case vulName = "VulName"
            case vulLevel = "VulLevel"
            case vulType = "VulType"
            case description = "Description"
            case repairPlan = "RepairPlan"
            case cveId = "CveId"
            case reference = "Reference"
            case cvss = "CVSS"
            case publicDate = "PublicDate"
            case cvssScore = "CvssScore"
            case cveInfo = "CveInfo"
            case cvssScoreFloat = "CvssScoreFloat"
            case labels = "Labels"
            case defenseAttackCount = "DefenseAttackCount"
            case successFixCount = "SuccessFixCount"
            case fixSwitch = "FixSwitch"
            case requestId = "RequestId"
        }
    }

    /// 漏洞详情
    ///
    /// 漏洞详情，带CVSS版本
    @inlinable
    public func describeVulInfoCvss(_ input: DescribeVulInfoCvssRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulInfoCvssResponse> {
        self.client.execute(action: "DescribeVulInfoCvss", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 漏洞详情
    ///
    /// 漏洞详情，带CVSS版本
    @inlinable
    public func describeVulInfoCvss(_ input: DescribeVulInfoCvssRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulInfoCvssResponse {
        try await self.client.execute(action: "DescribeVulInfoCvss", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 漏洞详情
    ///
    /// 漏洞详情，带CVSS版本
    @inlinable
    public func describeVulInfoCvss(vulId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulInfoCvssResponse> {
        self.describeVulInfoCvss(DescribeVulInfoCvssRequest(vulId: vulId), region: region, logger: logger, on: eventLoop)
    }

    /// 漏洞详情
    ///
    /// 漏洞详情，带CVSS版本
    @inlinable
    public func describeVulInfoCvss(vulId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulInfoCvssResponse {
        try await self.describeVulInfoCvss(DescribeVulInfoCvssRequest(vulId: vulId), region: region, logger: logger, on: eventLoop)
    }
}
