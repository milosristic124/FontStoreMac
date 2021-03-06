//
//  StyleKit.swift
//  FontYou
//
//  Created by Timothy Armes on 03/04/2017.
//  Copyright © 2017 Arctic Whiteness. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import Cocoa

public class StyleKit : NSObject {

    //// Cache

    private struct Cache {
        static let primary: NSColor = NSColor(red: 0, green: 0.471, blue: 1, alpha: 1)
        static let textGrey: NSColor = NSColor(red: 0.706, green: 0.706, blue: 0.706, alpha: 1)
        static let textBlack: NSColor = NSColor(red: 0.106, green: 0.106, blue: 0.106, alpha: 1)
        static let lightGrey: NSColor = NSColor(red: 0.957, green: 0.957, blue: 0.957, alpha: 1)
        static var imageOfDisclosureTriangleOpen: NSImage?
        static var imageOfDisclosureTriangleClosed: NSImage?
        static var imageOfStackViewIndicator: NSImage?
    }

    //// Colors

    public dynamic class var primary: NSColor { return Cache.primary }
    public dynamic class var textGrey: NSColor { return Cache.textGrey }
    public dynamic class var textBlack: NSColor { return Cache.textBlack }
    public dynamic class var lightGrey: NSColor { return Cache.lightGrey }

    //// Drawing Methods

    public dynamic class func drawPopupArrow(frame: NSRect = NSRect(x: 0, y: 3, width: 40, height: 17)) {

        //// Bezier Drawing
        let bezierPath = NSBezierPath()
        bezierPath.move(to: NSPoint(x: frame.minX, y: frame.minY))
        bezierPath.curve(to: NSPoint(x: frame.minX + 0.50000 * frame.width, y: frame.maxY - 2), controlPoint1: NSPoint(x: frame.minX + 10, y: frame.minY), controlPoint2: NSPoint(x: frame.minX + 0.36896 * frame.width, y: frame.maxY - 2))
        bezierPath.curve(to: NSPoint(x: frame.maxX, y: frame.minY), controlPoint1: NSPoint(x: frame.minX + 0.62819 * frame.width, y: frame.maxY - 2), controlPoint2: NSPoint(x: frame.maxX - 10, y: frame.minY))
        bezierPath.line(to: NSPoint(x: 40, y: 0))
        bezierPath.line(to: NSPoint(x: 0, y: 0))
        StyleKit.primary.setFill()
        bezierPath.fill()
    }

    public dynamic class func drawDisclosureTriangleOpen(frame targetFrame: NSRect = NSRect(x: 0, y: 0, width: 8, height: 8), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = NSGraphicsContext.current()!.cgContext
        
        //// Resize to Target Frame
        NSGraphicsContext.saveGraphicsState()
        let resizedFrame: NSRect = resizing.apply(rect: NSRect(x: 0, y: 0, width: 8, height: 8), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 8, y: resizedFrame.height / 8)


        //// Polygon 2 Drawing
        NSGraphicsContext.saveGraphicsState()
        context.translateBy(x: 8, y: 9)
        context.rotate(by: 180 * CGFloat.pi/180)

        let polygon2Path = NSBezierPath()
        polygon2Path.move(to: NSPoint(x: 4, y: 8))
        polygon2Path.line(to: NSPoint(x: 7.46, y: 2))
        polygon2Path.line(to: NSPoint(x: 0.54, y: 2))
        polygon2Path.close()
        StyleKit.textBlack.setFill()
        polygon2Path.fill()

        NSGraphicsContext.restoreGraphicsState()
        
        NSGraphicsContext.restoreGraphicsState()

    }

    public dynamic class func drawDisclosureTriangleClosed(frame targetFrame: NSRect = NSRect(x: 0, y: 0, width: 8, height: 8), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = NSGraphicsContext.current()!.cgContext
        
        //// Resize to Target Frame
        NSGraphicsContext.saveGraphicsState()
        let resizedFrame: NSRect = resizing.apply(rect: NSRect(x: 0, y: 0, width: 8, height: 8), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 8, y: resizedFrame.height / 8)


        //// Polygon Drawing
        NSGraphicsContext.saveGraphicsState()
        context.translateBy(x: -1, y: 8)
        context.rotate(by: -90 * CGFloat.pi/180)

        let polygonPath = NSBezierPath()
        polygonPath.move(to: NSPoint(x: 4, y: 8))
        polygonPath.line(to: NSPoint(x: 7.46, y: 2))
        polygonPath.line(to: NSPoint(x: 0.54, y: 2))
        polygonPath.close()
        StyleKit.textBlack.setFill()
        polygonPath.fill()

        NSGraphicsContext.restoreGraphicsState()
        
        NSGraphicsContext.restoreGraphicsState()

    }

    public dynamic class func drawStackViewIndicator(frame targetFrame: NSRect = NSRect(x: 0, y: 0, width: 14, height: 8), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = NSGraphicsContext.current()!.cgContext
        
        //// Resize to Target Frame
        NSGraphicsContext.saveGraphicsState()
        let resizedFrame: NSRect = resizing.apply(rect: NSRect(x: 0, y: 0, width: 14, height: 8), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 14, y: resizedFrame.height / 8)


        //// Bezier 3 Drawing
        let bezier3Path = NSBezierPath()
        bezier3Path.move(to: NSPoint(x: 0, y: 7))
        bezier3Path.line(to: NSPoint(x: 14, y: 7))
        bezier3Path.line(to: NSPoint(x: 7, y: 0))
        bezier3Path.line(to: NSPoint(x: 0, y: 7))
        bezier3Path.close()
        bezier3Path.move(to: NSPoint(x: 0, y: 7))
        bezier3Path.line(to: NSPoint(x: 14, y: 7))
        bezier3Path.line(to: NSPoint(x: 14, y: 8))
        bezier3Path.line(to: NSPoint(x: 0, y: 8))
        bezier3Path.line(to: NSPoint(x: 0, y: 7))
        bezier3Path.close()
        StyleKit.primary.setFill()
        bezier3Path.fill()
        
        NSGraphicsContext.restoreGraphicsState()

    }

    //// Generated Images

    public dynamic class var imageOfDisclosureTriangleOpen: NSImage {
        if Cache.imageOfDisclosureTriangleOpen != nil {
            return Cache.imageOfDisclosureTriangleOpen!
        }

        Cache.imageOfDisclosureTriangleOpen = NSImage(size: NSSize(width: 8, height: 8), flipped: false) { _ in 
            StyleKit.drawDisclosureTriangleOpen()

            return true
        }

        return Cache.imageOfDisclosureTriangleOpen!
    }

    public dynamic class var imageOfDisclosureTriangleClosed: NSImage {
        if Cache.imageOfDisclosureTriangleClosed != nil {
            return Cache.imageOfDisclosureTriangleClosed!
        }

        Cache.imageOfDisclosureTriangleClosed = NSImage(size: NSSize(width: 8, height: 8), flipped: false) { _ in 
            StyleKit.drawDisclosureTriangleClosed()

            return true
        }

        return Cache.imageOfDisclosureTriangleClosed!
    }

    public dynamic class var imageOfStackViewIndicator: NSImage {
        if Cache.imageOfStackViewIndicator != nil {
            return Cache.imageOfStackViewIndicator!
        }

        Cache.imageOfStackViewIndicator = NSImage(size: NSSize(width: 14, height: 8), flipped: false) { _ in 
            StyleKit.drawStackViewIndicator()

            return true
        }

        return Cache.imageOfStackViewIndicator!
    }




    @objc(StyleKitResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: NSRect, target: NSRect) -> NSRect {
            if rect == target || target == NSRect.zero {
                return rect
            }

            var scales = NSSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
