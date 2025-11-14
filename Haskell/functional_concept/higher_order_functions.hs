applyThrice :: (a -> a) -> a -> a
applyThrice f x = f (f (f x))