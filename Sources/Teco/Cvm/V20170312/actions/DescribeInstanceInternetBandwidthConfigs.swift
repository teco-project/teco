//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cvm {
    /// 查询实例带宽配置
    ///
    /// 本接口 (DescribeInstanceInternetBandwidthConfigs) 用于查询实例带宽配置。
    /// * 只支持查询`BANDWIDTH_PREPAID`（ 预付费按带宽结算 ）计费模式的带宽配置。
    /// * 接口返回实例的所有带宽配置信息（包含历史的带宽配置信息）。
    @inlinable
    public func describeInstanceInternetBandwidthConfigs(_ input: DescribeInstanceInternetBandwidthConfigsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceInternetBandwidthConfigsResponse > {
        self.client.execute(action: "DescribeInstanceInternetBandwidthConfigs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询实例带宽配置
    ///
    /// 本接口 (DescribeInstanceInternetBandwidthConfigs) 用于查询实例带宽配置。
    /// * 只支持查询`BANDWIDTH_PREPAID`（ 预付费按带宽结算 ）计费模式的带宽配置。
    /// * 接口返回实例的所有带宽配置信息（包含历史的带宽配置信息）。
    @inlinable
    public func describeInstanceInternetBandwidthConfigs(_ input: DescribeInstanceInternetBandwidthConfigsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceInternetBandwidthConfigsResponse {
        try await self.client.execute(action: "DescribeInstanceInternetBandwidthConfigs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeInstanceInternetBandwidthConfigs请求参数结构体
    public struct DescribeInstanceInternetBandwidthConfigsRequest: TCRequestModel {
        /// 待操作的实例ID。可通过[`DescribeInstances`](https://cloud.tencent.com/document/api/213/15728)接口返回值中的`InstanceId`获取。
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// DescribeInstanceInternetBandwidthConfigs返回参数结构体
    public struct DescribeInstanceInternetBandwidthConfigsResponse: TCResponseModel {
        /// 带宽配置信息列表。
        public let internetBandwidthConfigSet: [InternetBandwidthConfig]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case internetBandwidthConfigSet = "InternetBandwidthConfigSet"
            case requestId = "RequestId"
        }
    }
}