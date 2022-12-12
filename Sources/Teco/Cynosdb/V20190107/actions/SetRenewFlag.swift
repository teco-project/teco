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

extension Cynosdb {
    /// SetRenewFlag请求参数结构体
    public struct SetRenewFlagRequest: TCRequestModel {
        /// 需操作的实例ID
        public let resourceIds: [String]
        
        /// 自动续费标志位，续费标记 0:正常续费  1:自动续费 2:到期不续
        public let autoRenewFlag: Int64
        
        public init (resourceIds: [String], autoRenewFlag: Int64) {
            self.resourceIds = resourceIds
            self.autoRenewFlag = autoRenewFlag
        }
        
        enum CodingKeys: String, CodingKey {
            case resourceIds = "ResourceIds"
            case autoRenewFlag = "AutoRenewFlag"
        }
    }
    
    /// SetRenewFlag返回参数结构体
    public struct SetRenewFlagResponse: TCResponseModel {
        /// 操作成功实例数
        public let count: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case requestId = "RequestId"
        }
    }
    
    /// 设置自动续费
    ///
    /// SetRenewFlag设置实例的自动续费功能
    @inlinable
    public func setRenewFlag(_ input: SetRenewFlagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SetRenewFlagResponse > {
        self.client.execute(action: "SetRenewFlag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 设置自动续费
    ///
    /// SetRenewFlag设置实例的自动续费功能
    @inlinable
    public func setRenewFlag(_ input: SetRenewFlagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetRenewFlagResponse {
        try await self.client.execute(action: "SetRenewFlag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
