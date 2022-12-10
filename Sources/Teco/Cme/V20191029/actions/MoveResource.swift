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
    /// 移动资源
    ///
    /// 移动资源，支持跨个人或团队移动媒体以及分类。如果填写了Operator，则需要校验用户对媒体和分类资源的访问以及写权限。
    /// <li>当原始资源为媒体时，该接口效果为将该媒体移动到目标分类下面；</li>
    /// <li>当原始资源为分类时，该接口效果为将原始分类移动到目标分类或者是重命名。</li>
    ///  如果 SourceResource.Resource.Id = /素材/视频/NBA，DestinationResource.Resource.Id= /素材/视频/篮球 
    /// <li>当 DestinationResource.Resource.Id 不存在时候且原始资源与目标资源归属相同，操作结果为重命名原始分类；</li>
    /// <li>当 DestinationResource.Resource.Id 存在时候，操作结果为产生新目录 /素材/视频/篮球/NBA</li>
    @inlinable
    public func moveResource(_ input: MoveResourceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < MoveResourceResponse > {
        self.client.execute(action: "MoveResource", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 移动资源
    ///
    /// 移动资源，支持跨个人或团队移动媒体以及分类。如果填写了Operator，则需要校验用户对媒体和分类资源的访问以及写权限。
    /// <li>当原始资源为媒体时，该接口效果为将该媒体移动到目标分类下面；</li>
    /// <li>当原始资源为分类时，该接口效果为将原始分类移动到目标分类或者是重命名。</li>
    ///  如果 SourceResource.Resource.Id = /素材/视频/NBA，DestinationResource.Resource.Id= /素材/视频/篮球 
    /// <li>当 DestinationResource.Resource.Id 不存在时候且原始资源与目标资源归属相同，操作结果为重命名原始分类；</li>
    /// <li>当 DestinationResource.Resource.Id 存在时候，操作结果为产生新目录 /素材/视频/篮球/NBA</li>
    @inlinable
    public func moveResource(_ input: MoveResourceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MoveResourceResponse {
        try await self.client.execute(action: "MoveResource", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// MoveResource请求参数结构体
    public struct MoveResourceRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String
        
        /// 待移动的原始资源信息，包含原始媒体或分类资源，以及资源归属。
        public let sourceResource: ResourceInfo
        
        /// 目标信息，包含分类及归属，仅支持移动资源到分类。
        public let destinationResource: ResourceInfo
        
        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以移动任务资源。如果指定操作者，则操作者必须对源及目标资源有写权限。
        public let `operator`: String?
        
        public init (platform: String, sourceResource: ResourceInfo, destinationResource: ResourceInfo, `operator`: String?) {
            self.platform = platform
            self.sourceResource = sourceResource
            self.destinationResource = destinationResource
            self.`operator` = `operator`
        }
        
        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case sourceResource = "SourceResource"
            case destinationResource = "DestinationResource"
            case `operator` = "Operator"
        }
    }
    
    /// MoveResource返回参数结构体
    public struct MoveResourceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}