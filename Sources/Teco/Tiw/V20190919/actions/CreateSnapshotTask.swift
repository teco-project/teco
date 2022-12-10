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

extension Tiw {
    /// 创建白板板书生成任务
    ///
    /// 创建白板板书生成任务, 在任务结束后，如果提供了回调地址，将通过回调地址通知板书生成结果
    @inlinable
    public func createSnapshotTask(_ input: CreateSnapshotTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateSnapshotTaskResponse > {
        self.client.execute(action: "CreateSnapshotTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建白板板书生成任务
    ///
    /// 创建白板板书生成任务, 在任务结束后，如果提供了回调地址，将通过回调地址通知板书生成结果
    @inlinable
    public func createSnapshotTask(_ input: CreateSnapshotTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSnapshotTaskResponse {
        try await self.client.execute(action: "CreateSnapshotTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateSnapshotTask请求参数结构体
    public struct CreateSnapshotTaskRequest: TCRequestModel {
        /// 白板相关参数
        public let whiteboard: SnapshotWhiteboard
        
        /// 白板房间 `SdkAppId`
        public let sdkAppId: UInt64
        
        /// 白板房间号
        public let roomId: UInt64
        
        /// 白板板书生成结果通知回调地址
        public let callbackURL: String?
        
        /// 白板板书文件 `COS` 存储参数， 不填默认存储在公共存储桶，公共存储桶的数据仅保存3天
        public let cos: SnapshotCOS
        
        /// 白板板书生成模式，默认为 `AllMarks`。取值说明如下：
        /// `AllMarks` - 全量模式，即对于客户端每一次调用 `addSnapshotMark` 接口打上的白板板书生成标志全部都会生成对应的白板板书图片。
        /// `LatestMarksOnly` - 单页去重模式，即对于客户端在同一页白板上多次调用 `addSnapshotMark` 打上的白板板书生成标志仅保留最新一次标志来生成对应白板页的白板板书图片。
        /// （**注意：`LatestMarksOnly` 模式只有客户端使用v2.6.8及以上版本的白板SDK调用 `addSnapshotMark` 时才生效，否则即使在调用本API是指定了 `LatestMarksOnly` 模式，服务后台会使用默认的 `AllMarks` 模式生成白板板书**）
        public let snapshotMode: String?
        
        public init (whiteboard: SnapshotWhiteboard, sdkAppId: UInt64, roomId: UInt64, callbackURL: String?, cos: SnapshotCOS, snapshotMode: String?) {
            self.whiteboard = whiteboard
            self.sdkAppId = sdkAppId
            self.roomId = roomId
            self.callbackURL = callbackURL
            self.cos = cos
            self.snapshotMode = snapshotMode
        }
        
        enum CodingKeys: String, CodingKey {
            case whiteboard = "Whiteboard"
            case sdkAppId = "SdkAppId"
            case roomId = "RoomId"
            case callbackURL = "CallbackURL"
            case cos = "COS"
            case snapshotMode = "SnapshotMode"
        }
    }
    
    /// CreateSnapshotTask返回参数结构体
    public struct CreateSnapshotTaskResponse: TCResponseModel {
        /// 白板板书生成任务ID，只有任务创建成功的时候才会返回此字段
        public let taskID: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskID = "TaskID"
            case requestId = "RequestId"
        }
    }
}
