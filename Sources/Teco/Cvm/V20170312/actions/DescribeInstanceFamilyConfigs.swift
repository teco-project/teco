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
    /// 查询所支持的实例机型族信息
    ///
    /// 本接口（DescribeInstanceFamilyConfigs）查询当前用户和地域所支持的机型族列表信息。
    @inlinable
    public func describeInstanceFamilyConfigs(_ input: DescribeInstanceFamilyConfigsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceFamilyConfigsResponse > {
        self.client.execute(action: "DescribeInstanceFamilyConfigs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询所支持的实例机型族信息
    ///
    /// 本接口（DescribeInstanceFamilyConfigs）查询当前用户和地域所支持的机型族列表信息。
    @inlinable
    public func describeInstanceFamilyConfigs(_ input: DescribeInstanceFamilyConfigsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceFamilyConfigsResponse {
        try await self.client.execute(action: "DescribeInstanceFamilyConfigs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeInstanceFamilyConfigs请求参数结构体
    public struct DescribeInstanceFamilyConfigsRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeInstanceFamilyConfigs返回参数结构体
    public struct DescribeInstanceFamilyConfigsResponse: TCResponseModel {
        /// 实例机型组配置的列表信息
        public let instanceFamilyConfigSet: [InstanceFamilyConfig]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case instanceFamilyConfigSet = "InstanceFamilyConfigSet"
            case requestId = "RequestId"
        }
    }
}
