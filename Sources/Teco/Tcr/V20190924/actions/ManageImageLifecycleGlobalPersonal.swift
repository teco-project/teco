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

extension Tcr {
    /// 设置个人版全局镜像版本自动清理策略
    ///
    /// 用于设置个人版全局镜像版本自动清理策略
    @inlinable
    public func manageImageLifecycleGlobalPersonal(_ input: ManageImageLifecycleGlobalPersonalRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ManageImageLifecycleGlobalPersonalResponse > {
        self.client.execute(action: "ManageImageLifecycleGlobalPersonal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 设置个人版全局镜像版本自动清理策略
    ///
    /// 用于设置个人版全局镜像版本自动清理策略
    @inlinable
    public func manageImageLifecycleGlobalPersonal(_ input: ManageImageLifecycleGlobalPersonalRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ManageImageLifecycleGlobalPersonalResponse {
        try await self.client.execute(action: "ManageImageLifecycleGlobalPersonal", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ManageImageLifecycleGlobalPersonal请求参数结构体
    public struct ManageImageLifecycleGlobalPersonalRequest: TCRequestModel {
        /// global_keep_last_days:全局保留最近几天的数据;global_keep_last_nums:全局保留最近多少个
        public let type: String
        
        /// 策略值
        public let val: Int64
        
        public init (type: String, val: Int64) {
            self.type = type
            self.val = val
        }
        
        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case val = "Val"
        }
    }
    
    /// ManageImageLifecycleGlobalPersonal返回参数结构体
    public struct ManageImageLifecycleGlobalPersonalResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}