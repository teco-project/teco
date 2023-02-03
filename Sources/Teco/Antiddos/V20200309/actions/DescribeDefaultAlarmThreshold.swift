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

extension Antiddos {
    /// DescribeDefaultAlarmThreshold请求参数结构体
    public struct DescribeDefaultAlarmThresholdRequest: TCRequestModel {
        /// 产品类型，取值[
        /// bgp(表示高防包产品)
        /// bgpip(表示高防IP产品)
        /// ]
        public let instanceType: String

        /// 告警阈值类型搜索，取值[
        /// 1(入流量告警阈值)
        /// 2(攻击清洗流量告警阈值)
        /// ]
        public let filterAlarmType: Int64

        public init(instanceType: String, filterAlarmType: Int64) {
            self.instanceType = instanceType
            self.filterAlarmType = filterAlarmType
        }

        enum CodingKeys: String, CodingKey {
            case instanceType = "InstanceType"
            case filterAlarmType = "FilterAlarmType"
        }
    }

    /// DescribeDefaultAlarmThreshold返回参数结构体
    public struct DescribeDefaultAlarmThresholdResponse: TCResponseModel {
        /// 默认告警阈值配置
        public let defaultAlarmConfigList: [DefaultAlarmThreshold]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case defaultAlarmConfigList = "DefaultAlarmConfigList"
            case requestId = "RequestId"
        }
    }

    /// 获取单IP默认告警阈值配置
    @inlinable
    public func describeDefaultAlarmThreshold(_ input: DescribeDefaultAlarmThresholdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDefaultAlarmThresholdResponse> {
        self.client.execute(action: "DescribeDefaultAlarmThreshold", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取单IP默认告警阈值配置
    @inlinable
    public func describeDefaultAlarmThreshold(_ input: DescribeDefaultAlarmThresholdRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDefaultAlarmThresholdResponse {
        try await self.client.execute(action: "DescribeDefaultAlarmThreshold", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取单IP默认告警阈值配置
    @inlinable
    public func describeDefaultAlarmThreshold(instanceType: String, filterAlarmType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDefaultAlarmThresholdResponse> {
        let input = DescribeDefaultAlarmThresholdRequest(instanceType: instanceType, filterAlarmType: filterAlarmType)
        return self.client.execute(action: "DescribeDefaultAlarmThreshold", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取单IP默认告警阈值配置
    @inlinable
    public func describeDefaultAlarmThreshold(instanceType: String, filterAlarmType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDefaultAlarmThresholdResponse {
        let input = DescribeDefaultAlarmThresholdRequest(instanceType: instanceType, filterAlarmType: filterAlarmType)
        return try await self.client.execute(action: "DescribeDefaultAlarmThreshold", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
