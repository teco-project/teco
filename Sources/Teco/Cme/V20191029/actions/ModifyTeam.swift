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

extension Cme {
    /// 修改团队信息
    ///
    /// 修改团队信息，目前支持修改的操作有：
    /// <li>修改团队名称。</li>
    @inlinable
    public func modifyTeam(_ input: ModifyTeamRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyTeamResponse > {
        self.client.execute(action: "ModifyTeam", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改团队信息
    ///
    /// 修改团队信息，目前支持修改的操作有：
    /// <li>修改团队名称。</li>
    @inlinable
    public func modifyTeam(_ input: ModifyTeamRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTeamResponse {
        try await self.client.execute(action: "ModifyTeam", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyTeam请求参数结构体
    public struct ModifyTeamRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String
        
        /// 团队 ID。
        public let teamId: String
        
        /// 团队名称。团队名称不能置空，并且不能超过30个字符。
        public let name: String?
        
        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以修改所有团队的信息。如果指定操作者，则操作者必须为团队管理员或者所有者。
        public let `operator`: String?
        
        public init (platform: String, teamId: String, name: String?, `operator`: String?) {
            self.platform = platform
            self.teamId = teamId
            self.name = name
            self.`operator` = `operator`
        }
        
        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case teamId = "TeamId"
            case name = "Name"
            case `operator` = "Operator"
        }
    }
    
    /// ModifyTeam返回参数结构体
    public struct ModifyTeamResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
