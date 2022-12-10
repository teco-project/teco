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

extension TCMpsError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case endTime = "InvalidParameter.EndTime"
            case exceededQuantityLimit = "InvalidParameter.ExceededQuantityLimit"
            case id = "InvalidParameter.Id"
            case input = "InvalidParameter.Input"
            case inputOutputId = "InvalidParameter.InputOutputId"
            case maxBandwidth = "InvalidParameter.MaxBandwidth"
            case name = "InvalidParameter.Name"
            case notFound = "InvalidParameter.NotFound"
            case output = "InvalidParameter.Output"
            case outputGroups = "InvalidParameter.OutputGroups"
            case outputId = "InvalidParameter.OutputId"
            case pageNum = "InvalidParameter.PageNum"
            case pageSize = "InvalidParameter.PageSize"
            case period = "InvalidParameter.Period"
            case pipeline = "InvalidParameter.Pipeline"
            case `protocol` = "InvalidParameter.Protocol"
            case sortType = "InvalidParameter.SortType"
            case startTime = "InvalidParameter.StartTime"
            case state = "InvalidParameter.State"
            case type = "InvalidParameter.Type"
            case other = "InvalidParameter"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        ///
        /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        public static var endTime: InvalidParameter {
            InvalidParameter(.endTime)
        }
        
        public static var exceededQuantityLimit: InvalidParameter {
            InvalidParameter(.exceededQuantityLimit)
        }
        
        public static var id: InvalidParameter {
            InvalidParameter(.id)
        }
        
        public static var input: InvalidParameter {
            InvalidParameter(.input)
        }
        
        public static var inputOutputId: InvalidParameter {
            InvalidParameter(.inputOutputId)
        }
        
        public static var maxBandwidth: InvalidParameter {
            InvalidParameter(.maxBandwidth)
        }
        
        public static var name: InvalidParameter {
            InvalidParameter(.name)
        }
        
        public static var notFound: InvalidParameter {
            InvalidParameter(.notFound)
        }
        
        public static var output: InvalidParameter {
            InvalidParameter(.output)
        }
        
        public static var outputGroups: InvalidParameter {
            InvalidParameter(.outputGroups)
        }
        
        public static var outputId: InvalidParameter {
            InvalidParameter(.outputId)
        }
        
        public static var pageNum: InvalidParameter {
            InvalidParameter(.pageNum)
        }
        
        public static var pageSize: InvalidParameter {
            InvalidParameter(.pageSize)
        }
        
        public static var period: InvalidParameter {
            InvalidParameter(.period)
        }
        
        public static var pipeline: InvalidParameter {
            InvalidParameter(.pipeline)
        }
        
        public static var `protocol`: InvalidParameter {
            InvalidParameter(.`protocol`)
        }
        
        public static var sortType: InvalidParameter {
            InvalidParameter(.sortType)
        }
        
        public static var startTime: InvalidParameter {
            InvalidParameter(.startTime)
        }
        
        public static var state: InvalidParameter {
            InvalidParameter(.state)
        }
        
        public static var type: InvalidParameter {
            InvalidParameter(.type)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
    }
}

extension TCMpsError.InvalidParameter: Equatable {
    public static func == (lhs: TCMpsError.InvalidParameter, rhs: TCMpsError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCMpsError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCMpsError.InvalidParameter {
    /// - Returns: ``TCMpsError`` that holds the same error and context.
    public func toMpsError() -> TCMpsError {
        guard let code = TCMpsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCMpsError(code, context: self.context)
    }
}

extension TCMpsError.InvalidParameter {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
