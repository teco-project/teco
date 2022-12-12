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

extension Sqlserver {
    /// ModifyDBInstanceRenewFlag请求参数结构体
    public struct ModifyDBInstanceRenewFlagRequest: TCRequestModel {
        /// 实例续费状态标记信息
        public let renewFlags: [InstanceRenewInfo]
        
        public init (renewFlags: [InstanceRenewInfo]) {
            self.renewFlags = renewFlags
        }
        
        enum CodingKeys: String, CodingKey {
            case renewFlags = "RenewFlags"
        }
    }
    
    /// ModifyDBInstanceRenewFlag返回参数结构体
    public struct ModifyDBInstanceRenewFlagResponse: TCResponseModel {
        /// 修改成功的个数
        public let count: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case requestId = "RequestId"
        }
    }
    
    /// 修改实例续费标记
    ///
    /// 本接口（ModifyDBInstanceRenewFlag）用于修改实例续费标记
    @inlinable
    public func modifyDBInstanceRenewFlag(_ input: ModifyDBInstanceRenewFlagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDBInstanceRenewFlagResponse > {
        self.client.execute(action: "ModifyDBInstanceRenewFlag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改实例续费标记
    ///
    /// 本接口（ModifyDBInstanceRenewFlag）用于修改实例续费标记
    @inlinable
    public func modifyDBInstanceRenewFlag(_ input: ModifyDBInstanceRenewFlagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceRenewFlagResponse {
        try await self.client.execute(action: "ModifyDBInstanceRenewFlag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
