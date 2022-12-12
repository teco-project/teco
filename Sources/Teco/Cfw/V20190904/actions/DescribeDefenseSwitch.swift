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

extension Cfw {
    /// DescribeDefenseSwitch请求参数结构体
    public struct DescribeDefenseSwitchRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeDefenseSwitch返回参数结构体
    public struct DescribeDefenseSwitchResponse: TCResponseModel {
        /// 基础防御开关
        public let basicRuleSwitch: Int64
        
        /// 安全基线开关
        public let baselineAllSwitch: Int64
        
        /// 威胁情报开关
        public let tiSwitch: Int64
        
        /// 虚拟补丁开关
        public let virtualPatchSwitch: Int64
        
        /// 是否历史开启
        public let historyOpen: Int64
        
        /// 状态值，0：查询成功，非0：查询失败
        public let returnCode: Int64
        
        /// 状态信息，success：查询成功，fail：查询失败
        public let returnMsg: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case basicRuleSwitch = "BasicRuleSwitch"
            case baselineAllSwitch = "BaselineAllSwitch"
            case tiSwitch = "TiSwitch"
            case virtualPatchSwitch = "VirtualPatchSwitch"
            case historyOpen = "HistoryOpen"
            case returnCode = "ReturnCode"
            case returnMsg = "ReturnMsg"
            case requestId = "RequestId"
        }
    }
    
    /// 获取入侵防御按钮列表
    @inlinable
    public func describeDefenseSwitch(_ input: DescribeDefenseSwitchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDefenseSwitchResponse > {
        self.client.execute(action: "DescribeDefenseSwitch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取入侵防御按钮列表
    @inlinable
    public func describeDefenseSwitch(_ input: DescribeDefenseSwitchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDefenseSwitchResponse {
        try await self.client.execute(action: "DescribeDefenseSwitch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
