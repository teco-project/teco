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

extension Cvm {
    /// 查询网络计费类型
    ///
    /// 本接口（DescribeInternetChargeTypeConfigs）用于查询网络的计费类型。
    @inlinable
    public func describeInternetChargeTypeConfigs(_ input: DescribeInternetChargeTypeConfigsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInternetChargeTypeConfigsResponse > {
        self.client.execute(action: "DescribeInternetChargeTypeConfigs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询网络计费类型
    ///
    /// 本接口（DescribeInternetChargeTypeConfigs）用于查询网络的计费类型。
    @inlinable
    public func describeInternetChargeTypeConfigs(_ input: DescribeInternetChargeTypeConfigsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInternetChargeTypeConfigsResponse {
        try await self.client.execute(action: "DescribeInternetChargeTypeConfigs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeInternetChargeTypeConfigs请求参数结构体
    public struct DescribeInternetChargeTypeConfigsRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeInternetChargeTypeConfigs返回参数结构体
    public struct DescribeInternetChargeTypeConfigsResponse: TCResponseModel {
        /// 网络计费类型配置。
        public let internetChargeTypeConfigSet: [InternetChargeTypeConfig]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case internetChargeTypeConfigSet = "InternetChargeTypeConfigSet"
            case requestId = "RequestId"
        }
    }
}
