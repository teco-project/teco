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

extension Gse {
    /// 删除定时器
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DeleteTimerScalingPolicy）用于删除fleet下的定时器。
    @inlinable
    public func deleteTimerScalingPolicy(_ input: DeleteTimerScalingPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteTimerScalingPolicyResponse > {
        self.client.execute(action: "DeleteTimerScalingPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除定时器
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DeleteTimerScalingPolicy）用于删除fleet下的定时器。
    @inlinable
    public func deleteTimerScalingPolicy(_ input: DeleteTimerScalingPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTimerScalingPolicyResponse {
        try await self.client.execute(action: "DeleteTimerScalingPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteTimerScalingPolicy请求参数结构体
    public struct DeleteTimerScalingPolicyRequest: TCRequestModel {
        /// 定时器ID, 进行encode
        public let timerId: String?
        
        /// 扩缩容配置服务器舰队ID
        public let fleetId: String?
        
        /// 定时器名称
        public let timerName: String?
        
        public init (timerId: String?, fleetId: String?, timerName: String?) {
            self.timerId = timerId
            self.fleetId = fleetId
            self.timerName = timerName
        }
        
        enum CodingKeys: String, CodingKey {
            case timerId = "TimerId"
            case fleetId = "FleetId"
            case timerName = "TimerName"
        }
    }
    
    /// DeleteTimerScalingPolicy返回参数结构体
    public struct DeleteTimerScalingPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}