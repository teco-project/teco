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

extension Cdb {
    /// BalanceRoGroupLoad请求参数结构体
    public struct BalanceRoGroupLoadRequest: TCRequestModel {
        /// RO 组的 ID，格式如：cdbrg-c1nl9rpv。
        public let roGroupId: String
        
        public init (roGroupId: String) {
            self.roGroupId = roGroupId
        }
        
        enum CodingKeys: String, CodingKey {
            case roGroupId = "RoGroupId"
        }
    }
    
    /// BalanceRoGroupLoad返回参数结构体
    public struct BalanceRoGroupLoadResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 均衡RO组内实例的负载
    ///
    /// 本接口(BalanceRoGroupLoad)用于重新均衡 RO 组内实例的负载。注意，RO 组内 RO 实例会有一次数据库连接瞬断，请确保应用程序能重连数据库，谨慎操作。
    @inlinable
    public func balanceRoGroupLoad(_ input: BalanceRoGroupLoadRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < BalanceRoGroupLoadResponse > {
        self.client.execute(action: "BalanceRoGroupLoad", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 均衡RO组内实例的负载
    ///
    /// 本接口(BalanceRoGroupLoad)用于重新均衡 RO 组内实例的负载。注意，RO 组内 RO 实例会有一次数据库连接瞬断，请确保应用程序能重连数据库，谨慎操作。
    @inlinable
    public func balanceRoGroupLoad(_ input: BalanceRoGroupLoadRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BalanceRoGroupLoadResponse {
        try await self.client.execute(action: "BalanceRoGroupLoad", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
