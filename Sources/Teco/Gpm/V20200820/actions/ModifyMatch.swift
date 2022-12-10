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

extension Gpm {
    /// 修改匹配
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 修改匹配
    @inlinable
    public func modifyMatch(_ input: ModifyMatchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyMatchResponse > {
        self.client.execute(action: "ModifyMatch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改匹配
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 修改匹配
    @inlinable
    public func modifyMatch(_ input: ModifyMatchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMatchResponse {
        try await self.client.execute(action: "ModifyMatch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyMatch请求参数结构体
    public struct ModifyMatchRequest: TCRequestModel {
        /// 匹配名称，[a-zA-Z0-9-\.]* 长度128
        public let matchName: String
        
        /// 规则code
        public let ruleCode: String
        
        /// 超时时间，1-600秒
        public let timeout: Int64
        
        /// 是否为匹配结果请求服务器资源，0表示否，1表示请求GSE资源
        public let serverType: Int64
        
        /// 匹配code
        public let matchCode: String
        
        /// 匹配描述，最长1024
        public let matchDesc: String?
        
        /// 只支持 http 和 https 协议
        public let notifyUrl: String?
        
        /// 游戏服务器队列地域
        public let serverRegion: String?
        
        /// 游戏服务器队列
        public let serverQueue: String?
        
        /// 自定义推送数据
        public let customPushData: String?
        
        /// 游戏服务器会话数据
        public let serverSessionData: String?
        
        /// 游戏属性，key-value结构的数组
        public let gameProperties: [StringKV]?
        
        /// 日志开关，0表示关，1表示开
        public let logSwitch: Int64?
        
        /// 标签，key-value结构的数组
        public let tags: [StringKV]?
        
        public init (matchName: String, ruleCode: String, timeout: Int64, serverType: Int64, matchCode: String, matchDesc: String?, notifyUrl: String?, serverRegion: String?, serverQueue: String?, customPushData: String?, serverSessionData: String?, gameProperties: [StringKV]?, logSwitch: Int64?, tags: [StringKV]?) {
            self.matchName = matchName
            self.ruleCode = ruleCode
            self.timeout = timeout
            self.serverType = serverType
            self.matchCode = matchCode
            self.matchDesc = matchDesc
            self.notifyUrl = notifyUrl
            self.serverRegion = serverRegion
            self.serverQueue = serverQueue
            self.customPushData = customPushData
            self.serverSessionData = serverSessionData
            self.gameProperties = gameProperties
            self.logSwitch = logSwitch
            self.tags = tags
        }
        
        enum CodingKeys: String, CodingKey {
            case matchName = "MatchName"
            case ruleCode = "RuleCode"
            case timeout = "Timeout"
            case serverType = "ServerType"
            case matchCode = "MatchCode"
            case matchDesc = "MatchDesc"
            case notifyUrl = "NotifyUrl"
            case serverRegion = "ServerRegion"
            case serverQueue = "ServerQueue"
            case customPushData = "CustomPushData"
            case serverSessionData = "ServerSessionData"
            case gameProperties = "GameProperties"
            case logSwitch = "LogSwitch"
            case tags = "Tags"
        }
    }
    
    /// ModifyMatch返回参数结构体
    public struct ModifyMatchResponse: TCResponseModel {
        /// 匹配信息
        public let matchInfo: MatchInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case matchInfo = "MatchInfo"
            case requestId = "RequestId"
        }
    }
}