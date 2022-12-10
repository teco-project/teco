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

extension Mariadb {
    /// 查看数据库参数
    ///
    /// 本接口(DescribeDBParameters)用于获取数据库的当前参数设置。
    @inlinable
    public func describeDBParameters(_ input: DescribeDBParametersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBParametersResponse > {
        self.client.execute(action: "DescribeDBParameters", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查看数据库参数
    ///
    /// 本接口(DescribeDBParameters)用于获取数据库的当前参数设置。
    @inlinable
    public func describeDBParameters(_ input: DescribeDBParametersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBParametersResponse {
        try await self.client.execute(action: "DescribeDBParameters", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDBParameters请求参数结构体
    public struct DescribeDBParametersRequest: TCRequestModel {
        /// 实例 ID，形如：tdsql-ow728lmc。
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// DescribeDBParameters返回参数结构体
    public struct DescribeDBParametersResponse: TCResponseModel {
        /// 实例 ID，形如：tdsql-ow728lmc。
        public let instanceId: String
        
        /// 请求DB的当前参数值
        public let params: [ParamDesc]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case params = "Params"
            case requestId = "RequestId"
        }
    }
}