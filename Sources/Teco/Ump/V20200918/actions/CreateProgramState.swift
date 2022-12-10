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

extension Ump {
    /// 进程监控信息上报
    ///
    /// 上报所有进程监控信息
    @inlinable
    public func createProgramState(_ input: CreateProgramStateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateProgramStateResponse > {
        self.client.execute(action: "CreateProgramState", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 进程监控信息上报
    ///
    /// 上报所有进程监控信息
    @inlinable
    public func createProgramState(_ input: CreateProgramStateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProgramStateResponse {
        try await self.client.execute(action: "CreateProgramState", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateProgramState请求参数结构体
    public struct CreateProgramStateRequest: TCRequestModel {
        /// 集团编码
        public let groupCode: String
        
        /// 进程监控信息列表
        public let programStateItems: [ProgramStateItem]
        
        /// 商场ID
        public let mallId: UInt64?
        
        public init (groupCode: String, programStateItems: [ProgramStateItem], mallId: UInt64?) {
            self.groupCode = groupCode
            self.programStateItems = programStateItems
            self.mallId = mallId
        }
        
        enum CodingKeys: String, CodingKey {
            case groupCode = "GroupCode"
            case programStateItems = "ProgramStateItems"
            case mallId = "MallId"
        }
    }
    
    /// CreateProgramState返回参数结构体
    public struct CreateProgramStateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}