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
    /// 查询所有DDoS防护分区
    @inlinable
    public func describeZoneDDoSPolicy(_ input: DescribeZoneDDoSPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeZoneDDoSPolicyResponse > {
        self.client.execute(action: "DescribeZoneDDoSPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询所有DDoS防护分区
    @inlinable
    public func describeZoneDDoSPolicy(_ input: DescribeZoneDDoSPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZoneDDoSPolicyResponse {
        try await self.client.execute(action: "DescribeZoneDDoSPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeZoneDDoSPolicy请求参数结构体
    public struct DescribeZoneDDoSPolicyRequest: TCRequestModel {
        /// 站点Id。
        public let zoneId: String?
        
        public init (zoneId: String?) {
            self.zoneId = zoneId
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
        }
    }
    
    /// DescribeZoneDDoSPolicy返回参数结构体
    public struct DescribeZoneDDoSPolicyResponse: TCResponseModel {
        /// DDoS防护分区。
        public let shieldAreas: [ShieldArea]
        
        /// 所有开启代理的子域名信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dDoSHosts: [DDoSHost]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case shieldAreas = "ShieldAreas"
            case dDoSHosts = "DDoSHosts"
            case requestId = "RequestId"
        }
    }
}
