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

extension Cwp {
    /// 查询网站防篡改服务信息
    ///
    /// 网站防篡改-查询网页防篡改服务器购买信息及服务器信息
    @inlinable
    public func describeWebPageServiceInfo(_ input: DescribeWebPageServiceInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWebPageServiceInfoResponse > {
        self.client.execute(action: "DescribeWebPageServiceInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询网站防篡改服务信息
    ///
    /// 网站防篡改-查询网页防篡改服务器购买信息及服务器信息
    @inlinable
    public func describeWebPageServiceInfo(_ input: DescribeWebPageServiceInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebPageServiceInfoResponse {
        try await self.client.execute(action: "DescribeWebPageServiceInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeWebPageServiceInfo请求参数结构体
    public struct DescribeWebPageServiceInfoRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeWebPageServiceInfo返回参数结构体
    public struct DescribeWebPageServiceInfoResponse: TCResponseModel {
        /// 是否已购服务：true-是，false-否
        public let status: Bool
        
        /// 已使用授权数
        public let usedNum: UInt64
        
        /// 剩余授权数
        public let residueNum: UInt64
        
        /// 已购授权数
        public let buyNum: UInt64
        
        /// 临近到期数量
        public let expireNum: UInt64
        
        /// 所有授权机器信息
        public let allAuthorizedMachines: [ProtectMachineInfo]
        
        /// 临近到期授权机器信息
        public let expireAuthorizedMachines: [ProtectMachine]
        
        /// 已过期授权数
        public let expiredNum: UInt64
        
        /// 防护目录数
        public let protectDirNum: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case usedNum = "UsedNum"
            case residueNum = "ResidueNum"
            case buyNum = "BuyNum"
            case expireNum = "ExpireNum"
            case allAuthorizedMachines = "AllAuthorizedMachines"
            case expireAuthorizedMachines = "ExpireAuthorizedMachines"
            case expiredNum = "ExpiredNum"
            case protectDirNum = "ProtectDirNum"
            case requestId = "RequestId"
        }
    }
}