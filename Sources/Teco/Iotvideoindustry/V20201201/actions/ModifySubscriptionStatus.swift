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

extension Iotvideoindustry {
    /// 编辑设备订阅状态
    ///
    /// 编辑设备订阅状态
    @inlinable
    public func modifySubscriptionStatus(_ input: ModifySubscriptionStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifySubscriptionStatusResponse > {
        self.client.execute(action: "ModifySubscriptionStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 编辑设备订阅状态
    ///
    /// 编辑设备订阅状态
    @inlinable
    public func modifySubscriptionStatus(_ input: ModifySubscriptionStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubscriptionStatusResponse {
        try await self.client.execute(action: "ModifySubscriptionStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifySubscriptionStatus请求参数结构体
    public struct ModifySubscriptionStatusRequest: TCRequestModel {
        /// 设备ID
        public let deviceId: String
        
        /// 订阅状态 1：关闭订阅 2：开启订阅
        public let status: Int64
        
        /// 订阅类型 Alarm:告警订阅 Catalog:目录订阅 MobilePosition:移动位置订阅
        public let subscriptionItem: String?
        
        public init (deviceId: String, status: Int64, subscriptionItem: String?) {
            self.deviceId = deviceId
            self.status = status
            self.subscriptionItem = subscriptionItem
        }
        
        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case status = "Status"
            case subscriptionItem = "SubscriptionItem"
        }
    }
    
    /// ModifySubscriptionStatus返回参数结构体
    public struct ModifySubscriptionStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}