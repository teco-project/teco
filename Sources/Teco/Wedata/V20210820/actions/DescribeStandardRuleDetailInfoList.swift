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

extension Wedata {
    /// DescribeStandardRuleDetailInfoList请求参数结构体
    public struct DescribeStandardRuleDetailInfoListRequest: TCRequestModel {
        /// 空间、项目id
        public let projectId: String

        /// 标准分类11编码映射 12数据过滤 13字符串转换 14数据元定义 15正则表达 16术语词典
        public let type: Int64

        public init(projectId: String, type: Int64) {
            self.projectId = projectId
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case type = "Type"
        }
    }

    /// DescribeStandardRuleDetailInfoList返回参数结构体
    public struct DescribeStandardRuleDetailInfoListResponse: TCResponseModel {
        /// 返回值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let standardRuleDetailList: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case standardRuleDetailList = "StandardRuleDetailList"
            case requestId = "RequestId"
        }
    }

    /// 获取数据标准规则详情
    @inlinable
    public func describeStandardRuleDetailInfoList(_ input: DescribeStandardRuleDetailInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStandardRuleDetailInfoListResponse> {
        self.client.execute(action: "DescribeStandardRuleDetailInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取数据标准规则详情
    @inlinable
    public func describeStandardRuleDetailInfoList(_ input: DescribeStandardRuleDetailInfoListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStandardRuleDetailInfoListResponse {
        try await self.client.execute(action: "DescribeStandardRuleDetailInfoList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取数据标准规则详情
    @inlinable
    public func describeStandardRuleDetailInfoList(projectId: String, type: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStandardRuleDetailInfoListResponse> {
        self.describeStandardRuleDetailInfoList(.init(projectId: projectId, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 获取数据标准规则详情
    @inlinable
    public func describeStandardRuleDetailInfoList(projectId: String, type: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStandardRuleDetailInfoListResponse {
        try await self.describeStandardRuleDetailInfoList(.init(projectId: projectId, type: type), region: region, logger: logger, on: eventLoop)
    }
}
