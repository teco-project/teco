//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DescribeK8sApiAbnormalTendency请求参数结构体
    public struct DescribeK8sApiAbnormalTendencyRequest: TCRequestModel {
        /// 趋势周期(默认为7天)
        public let tendencyPeriod: UInt64
        
        public init (tendencyPeriod: UInt64) {
            self.tendencyPeriod = tendencyPeriod
        }
        
        enum CodingKeys: String, CodingKey {
            case tendencyPeriod = "TendencyPeriod"
        }
    }
    
    /// DescribeK8sApiAbnormalTendency返回参数结构体
    public struct DescribeK8sApiAbnormalTendencyResponse: TCResponseModel {
        /// 趋势列表
        public let list: [K8sApiAbnormalTendencyItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case list = "List"
            case requestId = "RequestId"
        }
    }
    
    /// 查询k8sapi异常事件趋势
    @inlinable
    public func describeK8sApiAbnormalTendency(_ input: DescribeK8sApiAbnormalTendencyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeK8sApiAbnormalTendencyResponse > {
        self.client.execute(action: "DescribeK8sApiAbnormalTendency", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询k8sapi异常事件趋势
    @inlinable
    public func describeK8sApiAbnormalTendency(_ input: DescribeK8sApiAbnormalTendencyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeK8sApiAbnormalTendencyResponse {
        try await self.client.execute(action: "DescribeK8sApiAbnormalTendency", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
