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

extension Cwp {
    /// 修改告警设置
    @inlinable
    public func modifyWarningSetting(_ input: ModifyWarningSettingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyWarningSettingResponse > {
        self.client.execute(action: "ModifyWarningSetting", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改告警设置
    @inlinable
    public func modifyWarningSetting(_ input: ModifyWarningSettingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWarningSettingResponse {
        try await self.client.execute(action: "ModifyWarningSetting", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyWarningSetting请求参数结构体
    public struct ModifyWarningSettingRequest: TCRequestModel {
        /// 告警设置的修改内容
        public let warningObjects: [WarningObject]
        
        public init (warningObjects: [WarningObject]) {
            self.warningObjects = warningObjects
        }
        
        enum CodingKeys: String, CodingKey {
            case warningObjects = "WarningObjects"
        }
    }
    
    /// ModifyWarningSetting返回参数结构体
    public struct ModifyWarningSettingResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
