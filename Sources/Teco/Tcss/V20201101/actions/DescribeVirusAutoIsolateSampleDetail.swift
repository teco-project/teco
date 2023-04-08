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

extension Tcss {
    /// DescribeVirusAutoIsolateSampleDetail请求参数结构体
    public struct DescribeVirusAutoIsolateSampleDetailRequest: TCRequestModel {
        /// 文件MD5值
        public let md5: String

        public init(md5: String) {
            self.md5 = md5
        }

        enum CodingKeys: String, CodingKey {
            case md5 = "MD5"
        }
    }

    /// DescribeVirusAutoIsolateSampleDetail返回参数结构体
    public struct DescribeVirusAutoIsolateSampleDetailResponse: TCResponseModel {
        /// 文件Md5值
        public let md5: String

        /// 文件大小(B)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let size: UInt64?

        /// 病毒名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let virusName: String?

        /// 风险等级 RISK_CRITICAL, RISK_HIGH, RISK_MEDIUM, RISK_LOW, RISK_NOTICE。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskLevel: String?

        /// 查杀引擎
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let killEngine: [String]?

        /// 标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [String]?

        /// 事件描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let harmDescribe: String?

        /// 建议方案
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let suggestScheme: String?

        /// 参考链接
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let referenceLink: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case md5 = "MD5"
            case size = "Size"
            case virusName = "VirusName"
            case riskLevel = "RiskLevel"
            case killEngine = "KillEngine"
            case tags = "Tags"
            case harmDescribe = "HarmDescribe"
            case suggestScheme = "SuggestScheme"
            case referenceLink = "ReferenceLink"
            case requestId = "RequestId"
        }
    }

    /// 查询木马自动隔离样本详情
    @inlinable
    public func describeVirusAutoIsolateSampleDetail(_ input: DescribeVirusAutoIsolateSampleDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVirusAutoIsolateSampleDetailResponse> {
        self.client.execute(action: "DescribeVirusAutoIsolateSampleDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询木马自动隔离样本详情
    @inlinable
    public func describeVirusAutoIsolateSampleDetail(_ input: DescribeVirusAutoIsolateSampleDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirusAutoIsolateSampleDetailResponse {
        try await self.client.execute(action: "DescribeVirusAutoIsolateSampleDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询木马自动隔离样本详情
    @inlinable
    public func describeVirusAutoIsolateSampleDetail(md5: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVirusAutoIsolateSampleDetailResponse> {
        self.describeVirusAutoIsolateSampleDetail(.init(md5: md5), region: region, logger: logger, on: eventLoop)
    }

    /// 查询木马自动隔离样本详情
    @inlinable
    public func describeVirusAutoIsolateSampleDetail(md5: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirusAutoIsolateSampleDetailResponse {
        try await self.describeVirusAutoIsolateSampleDetail(.init(md5: md5), region: region, logger: logger, on: eventLoop)
    }
}
