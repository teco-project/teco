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

extension Tcbr {
    /// 查询环境基础信息
    ///
    /// 查询环境基础信息
    @inlinable
    public func describeEnvBaseInfo(_ input: DescribeEnvBaseInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEnvBaseInfoResponse > {
        self.client.execute(action: "DescribeEnvBaseInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询环境基础信息
    ///
    /// 查询环境基础信息
    @inlinable
    public func describeEnvBaseInfo(_ input: DescribeEnvBaseInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvBaseInfoResponse {
        try await self.client.execute(action: "DescribeEnvBaseInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeEnvBaseInfo请求参数结构体
    public struct DescribeEnvBaseInfoRequest: TCRequestModel {
        /// 环境 Id
        public let envId: String
        
        public init (envId: String) {
            self.envId = envId
        }
        
        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
        }
    }
    
    /// DescribeEnvBaseInfo返回参数结构体
    public struct DescribeEnvBaseInfoResponse: TCResponseModel {
        /// 环境基础信息
        public let envBaseInfo: EnvBaseInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case envBaseInfo = "EnvBaseInfo"
            case requestId = "RequestId"
        }
    }
}