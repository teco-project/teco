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

extension Cii {
    /// 查询机器核保任务数据
    ///
    /// 本接口(DescribeMachineUnderwrite)用于查询机器核保任务数据
    @inlinable
    public func describeMachineUnderwrite(_ input: DescribeMachineUnderwriteRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMachineUnderwriteResponse > {
        self.client.execute(action: "DescribeMachineUnderwrite", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询机器核保任务数据
    ///
    /// 本接口(DescribeMachineUnderwrite)用于查询机器核保任务数据
    @inlinable
    public func describeMachineUnderwrite(_ input: DescribeMachineUnderwriteRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachineUnderwriteResponse {
        try await self.client.execute(action: "DescribeMachineUnderwrite", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeMachineUnderwrite请求参数结构体
    public struct DescribeMachineUnderwriteRequest: TCRequestModel {
        /// 核保任务ID
        public let underwriteTaskId: String
        
        public init (underwriteTaskId: String) {
            self.underwriteTaskId = underwriteTaskId
        }
        
        enum CodingKeys: String, CodingKey {
            case underwriteTaskId = "UnderwriteTaskId"
        }
    }
    
    /// DescribeMachineUnderwrite返回参数结构体
    public struct DescribeMachineUnderwriteResponse: TCResponseModel {
        /// 腾讯云主账号ID
        public let uin: String
        
        /// 操作人子账户ID
        public let subAccountUin: String
        
        /// 保单ID
        public let policyId: String
        
        /// 主任务ID
        public let mainTaskId: String
        
        /// 核保任务ID
        public let underwriteTaskId: String
        
        /// 结果状态：
        /// 0：返回成功
        /// 1：结果未生成
        /// 2：结果生成失败
        public let status: UInt64
        
        /// 机器核保结果
        public let underwriteResults: [MachineUnderwriteOutput]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case subAccountUin = "SubAccountUin"
            case policyId = "PolicyId"
            case mainTaskId = "MainTaskId"
            case underwriteTaskId = "UnderwriteTaskId"
            case status = "Status"
            case underwriteResults = "UnderwriteResults"
            case requestId = "RequestId"
        }
    }
}