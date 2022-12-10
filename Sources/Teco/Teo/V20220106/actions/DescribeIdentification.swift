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

extension Teo {
    /// 查询站点的验证状态
    ///
    /// 查询验证结果
    @inlinable
    public func describeIdentification(_ input: DescribeIdentificationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeIdentificationResponse > {
        self.client.execute(action: "DescribeIdentification", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询站点的验证状态
    ///
    /// 查询验证结果
    @inlinable
    public func describeIdentification(_ input: DescribeIdentificationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIdentificationResponse {
        try await self.client.execute(action: "DescribeIdentification", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeIdentification请求参数结构体
    public struct DescribeIdentificationRequest: TCRequestModel {
        /// 站点名称
        public let name: String
        
        public init (name: String) {
            self.name = name
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }
    
    /// DescribeIdentification返回参数结构体
    public struct DescribeIdentificationResponse: TCResponseModel {
        /// 站点名称
        public let name: String
        
        /// 验证状态
        /// - pending 验证中
        /// - finished 验证完成
        public let status: String
        
        /// 子域
        public let subdomain: String
        
        /// 记录类型
        public let recordType: String
        
        /// 记录值
        public let recordValue: String
        
        /// 域名当前的 NS 记录
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let originalNameServers: [String]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case status = "Status"
            case subdomain = "Subdomain"
            case recordType = "RecordType"
            case recordValue = "RecordValue"
            case originalNameServers = "OriginalNameServers"
            case requestId = "RequestId"
        }
    }
}