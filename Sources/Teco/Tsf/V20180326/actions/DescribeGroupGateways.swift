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

extension Tsf {
    /// 查询某个网关绑定的API 分组信息列表
    ///
    /// 查询某个网关绑定的API 分组信息列表
    @inlinable
    public func describeGroupGateways(_ input: DescribeGroupGatewaysRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeGroupGatewaysResponse > {
        self.client.execute(action: "DescribeGroupGateways", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询某个网关绑定的API 分组信息列表
    ///
    /// 查询某个网关绑定的API 分组信息列表
    @inlinable
    public func describeGroupGateways(_ input: DescribeGroupGatewaysRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupGatewaysResponse {
        try await self.client.execute(action: "DescribeGroupGateways", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeGroupGateways请求参数结构体
    public struct DescribeGroupGatewaysRequest: TCRequestModel {
        /// 网关部署组ID
        public let gatewayDeployGroupId: String
        
        /// 翻页查询偏移量
        public let offset: Int64
        
        /// 翻页查询每页记录数
        public let limit: Int64
        
        /// 搜索关键字
        public let searchWord: String?
        
        public init (gatewayDeployGroupId: String, offset: Int64, limit: Int64, searchWord: String?) {
            self.gatewayDeployGroupId = gatewayDeployGroupId
            self.offset = offset
            self.limit = limit
            self.searchWord = searchWord
        }
        
        enum CodingKeys: String, CodingKey {
            case gatewayDeployGroupId = "GatewayDeployGroupId"
            case offset = "Offset"
            case limit = "Limit"
            case searchWord = "SearchWord"
        }
    }
    
    /// DescribeGroupGateways返回参数结构体
    public struct DescribeGroupGatewaysResponse: TCResponseModel {
        /// API分组信息
        public let result: TsfPageApiGroupInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}