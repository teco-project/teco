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

extension Cfw {
    /// 封禁列表和放通列表批量操作接口
    ///
    /// 支持对封禁列表、放通列表如下操作：
    /// 批量增加封禁IP、放通IP/域名
    /// 批量删除封禁IP、放通IP/域名
    /// 批量修改封禁IP、放通IP/域名生效事件
    @inlinable
    public func modifyBlockIgnoreList(_ input: ModifyBlockIgnoreListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyBlockIgnoreListResponse > {
        self.client.execute(action: "ModifyBlockIgnoreList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 封禁列表和放通列表批量操作接口
    ///
    /// 支持对封禁列表、放通列表如下操作：
    /// 批量增加封禁IP、放通IP/域名
    /// 批量删除封禁IP、放通IP/域名
    /// 批量修改封禁IP、放通IP/域名生效事件
    @inlinable
    public func modifyBlockIgnoreList(_ input: ModifyBlockIgnoreListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBlockIgnoreListResponse {
        try await self.client.execute(action: "ModifyBlockIgnoreList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyBlockIgnoreList请求参数结构体
    public struct ModifyBlockIgnoreListRequest: TCRequestModel {
        /// 1封禁列表 2 放通列表
        public let ruleType: Int64
        
        /// IP、Domain二选一，不能同时为空
        public let ioc: [IocListData]
        
        /// 可选值：delete（删除）、edit（编辑）、add（添加）  其他值无效
        public let iocAction: String
        
        /// 时间格式：yyyy-MM-dd HH:mm:ss，IocAction 为edit或add时必填
        public let startTime: String?
        
        /// 时间格式：yyyy-MM-dd HH:mm:ss，IocAction 为edit或add时必填，必须大于当前时间且大于StartTime
        public let endTime: String?
        
        public init (ruleType: Int64, ioc: [IocListData], iocAction: String, startTime: String?, endTime: String?) {
            self.ruleType = ruleType
            self.ioc = ioc
            self.iocAction = iocAction
            self.startTime = startTime
            self.endTime = endTime
        }
        
        enum CodingKeys: String, CodingKey {
            case ruleType = "RuleType"
            case ioc = "IOC"
            case iocAction = "IocAction"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }
    
    /// ModifyBlockIgnoreList返回参数结构体
    public struct ModifyBlockIgnoreListResponse: TCResponseModel {
        /// 接口返回信息
        public let returnMsg: String
        
        /// 接口返回错误码，0请求成功  非0失败
        public let returnCode: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case returnMsg = "ReturnMsg"
            case returnCode = "ReturnCode"
            case requestId = "RequestId"
        }
    }
}