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

extension Tcb {
    /// DescribeEnvPostpaidDeduct请求参数结构体
    public struct DescribeEnvPostpaidDeductRequest: TCRequestModel {
        /// 资源方列表
        public let resourceTypes: [String]

        /// 环境id
        public let envId: String?

        /// 查询开始时间
        public let startTime: String?

        /// 查询结束时间
        public let endTime: String?

        public init(resourceTypes: [String], envId: String? = nil, startTime: String? = nil, endTime: String? = nil) {
            self.resourceTypes = resourceTypes
            self.envId = envId
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case resourceTypes = "ResourceTypes"
            case envId = "EnvId"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeEnvPostpaidDeduct返回参数结构体
    public struct DescribeEnvPostpaidDeductResponse: TCResponseModel {
        /// 指标抵扣详情列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let postPaidEnvDeductInfoList: [PostPaidEnvDeductInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case postPaidEnvDeductInfoList = "PostPaidEnvDeductInfoList"
            case requestId = "RequestId"
        }
    }

    /// 查询环境后付费计费详情
    @inlinable
    public func describeEnvPostpaidDeduct(_ input: DescribeEnvPostpaidDeductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnvPostpaidDeductResponse> {
        self.client.execute(action: "DescribeEnvPostpaidDeduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询环境后付费计费详情
    @inlinable
    public func describeEnvPostpaidDeduct(_ input: DescribeEnvPostpaidDeductRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvPostpaidDeductResponse {
        try await self.client.execute(action: "DescribeEnvPostpaidDeduct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询环境后付费计费详情
    @inlinable
    public func describeEnvPostpaidDeduct(resourceTypes: [String], envId: String? = nil, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnvPostpaidDeductResponse> {
        self.describeEnvPostpaidDeduct(DescribeEnvPostpaidDeductRequest(resourceTypes: resourceTypes, envId: envId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询环境后付费计费详情
    @inlinable
    public func describeEnvPostpaidDeduct(resourceTypes: [String], envId: String? = nil, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvPostpaidDeductResponse {
        try await self.describeEnvPostpaidDeduct(DescribeEnvPostpaidDeductRequest(resourceTypes: resourceTypes, envId: envId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
