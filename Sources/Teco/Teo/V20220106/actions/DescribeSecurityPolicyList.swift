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

extension Teo {
    /// DescribeSecurityPolicyList请求参数结构体
    public struct DescribeSecurityPolicyListRequest: TCRequestModel {
        /// 一级域名
        public let zoneId: String
        
        public init (zoneId: String) {
            self.zoneId = zoneId
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
        }
    }
    
    /// DescribeSecurityPolicyList返回参数结构体
    public struct DescribeSecurityPolicyListResponse: TCResponseModel {
        /// 防护资源列表
        public let entities: [SecurityEntity]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case entities = "Entities"
            case requestId = "RequestId"
        }
    }
    
    /// 查询全部安全实例
    @inlinable
    public func describeSecurityPolicyList(_ input: DescribeSecurityPolicyListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSecurityPolicyListResponse > {
        self.client.execute(action: "DescribeSecurityPolicyList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询全部安全实例
    @inlinable
    public func describeSecurityPolicyList(_ input: DescribeSecurityPolicyListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityPolicyListResponse {
        try await self.client.execute(action: "DescribeSecurityPolicyList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
