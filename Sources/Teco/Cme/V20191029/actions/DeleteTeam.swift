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

extension Cme {
    /// 删除团队
    ///
    /// 删除一个团队。要删除团队，必须满足以下条件：
    /// <li>要删除的团队必须没有归属的素材；</li>
    /// <li>要删除的团队必须没有归属的分类。</li>
    @inlinable
    public func deleteTeam(_ input: DeleteTeamRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteTeamResponse > {
        self.client.execute(action: "DeleteTeam", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除团队
    ///
    /// 删除一个团队。要删除团队，必须满足以下条件：
    /// <li>要删除的团队必须没有归属的素材；</li>
    /// <li>要删除的团队必须没有归属的分类。</li>
    @inlinable
    public func deleteTeam(_ input: DeleteTeamRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTeamResponse {
        try await self.client.execute(action: "DeleteTeam", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteTeam请求参数结构体
    public struct DeleteTeamRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String
        
        /// 要删除的团队  ID。
        public let teamId: String
        
        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以删除所有团队。如果指定操作者，则操作者必须为团队所有者。
        public let `operator`: String?
        
        public init (platform: String, teamId: String, `operator`: String?) {
            self.platform = platform
            self.teamId = teamId
            self.`operator` = `operator`
        }
        
        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case teamId = "TeamId"
            case `operator` = "Operator"
        }
    }
    
    /// DeleteTeam返回参数结构体
    public struct DeleteTeamResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}